cask :v1 => 'splashtop-streamer' do
  version '2.6.3.1'
  sha256 'b2c8a8401459ad0fd67d12a42b8a313c82df8726d175d17b26abd41e0a414040'

  url "https://d17kmd0va0f0mp.cloudfront.net/mac/Splashtop_Streamer_MAC_v#{version}.dmg"
  homepage 'http://www.splashtop.com/downloads'
  license :gratis

  pkg 'Splashtop Streamer.pkg'

  uninstall :pkgutil => 'com.splashtop.splashtopStreamer.*'
end
