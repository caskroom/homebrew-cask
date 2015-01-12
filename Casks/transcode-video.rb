cask :v1 => 'transcode-video' do
  version '5.4'
  sha256 '92f8a458c6c7f8981ced3d0da9bb9962787c8534690e208b36b2114c8a73a5ea'

  url 'https://github.com/donmelton/video-transcoding-scripts/archive/master.zip'
  name 'Video Transcoding Scripts'
  homepage 'https://github.com/donmelton/video-transcoding-scripts/'
  license :mit

  binary 'video-transcoding-scripts-master/transcode-video.sh'

  depends_on :cask => 'handbrakecli',
             :formula => %w{
                            mkvtoolnix
                            mp4v2
                           }
end
