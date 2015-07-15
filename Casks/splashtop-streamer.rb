cask :v1 => 'splashtop-streamer' do
  version '2.6.5.6'
  sha256 '1d6bfe6f778b55157453f93a9bf58408e53476d8de4eb403bd183ecdf740cb8c'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://d17kmd0va0f0mp.cloudfront.net/mac/Splashtop_Streamer_MAC_v#{version}.dmg"
  name 'Splashtop Streamer'
  homepage 'http://www.splashtop.com/downloads'
  license :gratis

  pkg 'Splashtop Streamer.pkg'

  uninstall :pkgutil => 'com.splashtop.splashtopStreamer.*'
end
