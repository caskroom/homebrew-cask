require 'digest'
require 'dependency_collector'
require 'formula_installer'

class Cask::Installer
  def initialize(cask, command=Cask::SystemCommand)
    @cask = cask
    @command = command
  end

  def self.print_caveats(cask)
    odebug "Printing caveats"
    unless cask.caveats.empty?
      ohai "Caveats"
      cask.caveats.each do |caveat|
        if caveat.respond_to?(:eval_and_print)
          caveat.eval_and_print(cask)
        else
          puts caveat
        end
      end
    end
  end

  def install(force=false)
    odebug "Cask::Installer.install"
    if @cask.installed? && !force
      raise CaskAlreadyInstalledError.new(@cask)
    end

    print_caveats

    begin
      formula_dependencies
      download
      extract_primary_container
      install_artifacts
    rescue
      purge_files
      raise
    end

    puts summary
  end

  def summary
    s = if MacOS.version >= :lion and not ENV['HOMEBREW_NO_EMOJI']
      (ENV['HOMEBREW_INSTALL_BADGE'] || "\xf0\x9f\x8d\xba") + '  '
    else
      "#{Tty.blue}==>#{Tty.white} Success!#{Tty.reset} "
    end
    s << "#{@cask} installed to '#{@cask.destination_path}' (#{@cask.destination_path.cabv})"
  end

  def download
    odebug "Downloading"
    download = Cask::Download.new(@cask)
    @downloaded_path = download.perform
    odebug "Downloaded to -> #{@downloaded_path.inspect}"
    @downloaded_path
  end

  def extract_primary_container
    odebug "Extracting primary containers"
    FileUtils.mkdir_p @cask.destination_path
    @downloaded_path.each do |download_item|
      container = if @cask.container_type
        # limitation: if container_type is set, it applies to all items
        Cask::Container.from_type(@cask.container_type)
      else
        Cask::Container.for_path(download_item, @command)
      end
      unless container
        raise CaskError.new "Uh oh, could not identify primary container for '#{downloaded_item}'"
      end
      odebug "Using container class #{container} for #{download_item}"
      container.new(@cask, download_item, @command).extract
    end
  end

  def install_artifacts
    odebug "Installing artifacts"
    artifacts = Cask::Artifact.for_cask(@cask)
    odebug "#{artifacts.length} artifact/s defined", artifacts
    artifacts.each do |artifact|
      odebug "Installing artifact of class #{artifact}"
      artifact.new(@cask, @command).install
    end
  end

  def formula_dependencies
    unless @cask.depends_on_formula.empty?
      ohai 'Installing Formula dependencies from Homebrew'
      @cask.depends_on_formula.each do |dep_name|
        dependency_collector = DependencyCollector.new
        dep = dependency_collector.add(dep_name)
        unless dep.installed?
          dep_tab = Tab.for_formula(dep.to_formula)
          dep_options = dep.options
          dep = dep.to_formula
          fi = FormulaInstaller.new(dep)
          fi.tab = dep_tab
          fi.options = dep_options
          fi.ignore_deps = false
          fi.show_header = true
          fi.install
          fi.caveats
          fi.finish
        end
      end
    end
  end

  def print_caveats
    self.class.print_caveats(@cask)
  end

  def uninstall
    odebug "Cask::Installer.uninstall"
    uninstall_artifacts
    purge_files
  end

  def uninstall_artifacts
    odebug "Un-installing artifacts"
    artifacts = Cask::Artifact.for_cask(@cask)
    odebug "#{artifacts.length} artifact/s defined", artifacts
    artifacts.each do |artifact|
      odebug "Un-installing artifact of class #{artifact}"
      artifact.new(@cask, @command).uninstall
    end
  end

  def purge_files
    odebug "Purging files"
    if @cask.destination_path.exist?
      @cask.destination_path.rmtree
    end
    @cask.caskroom_path.rmdir_if_possible
  end
end
