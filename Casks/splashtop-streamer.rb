cask :v1 => 'splashtop-streamer' do
  version '2.6.5.2'
  sha256 'b7707da7d3c50f18e2a131285464f885a8f30b9f6394828a2b4984cd3126b4ff'

  url "http://d17kmd0va0f0mp.cloudfront.net/mac/Splashtop_Streamer_MAC_v#{version}.dmg"
  homepage 'http://www.splashtop.com/downloads'
  license :gratis

  pkg 'Splashtop Streamer.pkg'

  uninstall :pkgutil => 'com.splashtop.splashtopStreamer.*'
end
