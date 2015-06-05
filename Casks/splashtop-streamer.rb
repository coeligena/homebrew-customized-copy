cask :v1 => 'splashtop-streamer' do
  version '2.6.5.4'
  sha256 'ddd0996464d41af64baf12030a371ae8beb255956f8ca36580c3480e5fd1339c'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://d17kmd0va0f0mp.cloudfront.net/mac/Splashtop_Streamer_MAC_v#{version}.dmg"
  name 'Splashtop Streamer'
  homepage 'http://www.splashtop.com/downloads'
  license :gratis

  pkg 'Splashtop Streamer.pkg'

  uninstall :pkgutil => 'com.splashtop.splashtopStreamer.*'
end
