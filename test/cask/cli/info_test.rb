require "test_helper"

describe Hbc::CLI::Info do
  it "displays some nice info about the specified Cask" do
    lambda do
      Hbc::CLI::Info.run("local-caffeine")
    end.must_output <<-CLIOUTPUT.undent
      local-caffeine: 1.2.3
      local-caffeine
      http://example.com/local-caffeine
      Not installed
      https://github.com/caskroom/homebrew-testcasks/blob/master/Casks/local-caffeine.rb
      ==> Contents
        Caffeine.app (app)
    CLIOUTPUT
  end

  describe "given multiple Casks" do
    before do
      @expected_output = <<-CLIOUTPUT.undent
        local-caffeine: 1.2.3
        local-caffeine
        http://example.com/local-caffeine
        Not installed
        https://github.com/caskroom/homebrew-testcasks/blob/master/Casks/local-caffeine.rb
        ==> Contents
          Caffeine.app (app)
        local-transmission: 2.61
        local-transmission
        http://example.com/local-transmission
        Not installed
        https://github.com/caskroom/homebrew-testcasks/blob/master/Casks/local-transmission.rb
        ==> Contents
          Transmission.app (app)
      CLIOUTPUT
    end

    it "displays the info" do
      lambda do
        Hbc::CLI::Info.run("local-caffeine", "local-transmission")
      end.must_output(@expected_output)
    end

    it "throws away stray options" do
      lambda do
        Hbc::CLI::Info.run("--notavalidoption", "local-caffeine", "local-transmission")
      end.must_output(@expected_output)
    end
  end

  it "should print caveats if the Cask provided one" do
    lambda do
      Hbc::CLI::Info.run("with-caveats")
    end.must_output <<-CLIOUTPUT.undent
      with-caveats: 1.2.3
      with-caveats
      http://example.com/local-caffeine
      Not installed
      https://github.com/caskroom/homebrew-testcasks/blob/master/Casks/with-caveats.rb
      ==> Contents
        Caffeine.app (app)
      ==> Caveats
      Here are some things you might want to know.

      Cask token: with-caveats

      Custom text via puts followed by DSL-generated text:
      To use with-caveats, you may need to add the /custom/path/bin directory
      to your PATH environment variable, eg (for bash shell):

        export PATH=/custom/path/bin:"$PATH"

    CLIOUTPUT
  end

  it 'should not print "Caveats" section divider if the caveats block has no output' do
    lambda do
      Hbc::CLI::Info.run("with-conditional-caveats")
    end.must_output <<-CLIOUTPUT.undent
      with-conditional-caveats: 1.2.3
      with-conditional-caveats
      http://example.com/local-caffeine
      Not installed
      https://github.com/caskroom/homebrew-testcasks/blob/master/Casks/with-conditional-caveats.rb
      ==> Contents
        Caffeine.app (app)
    CLIOUTPUT
  end

  describe "when no Cask is specified" do
    it "raises an exception" do
      lambda do
        Hbc::CLI::Info.run
      end.must_raise Hbc::CaskUnspecifiedError
    end
  end

  describe "when no Cask is specified, but an invalid option" do
    it "raises an exception" do
      lambda do
        Hbc::CLI::Info.run("--notavalidoption")
      end.must_raise Hbc::CaskUnspecifiedError
    end
  end
end
