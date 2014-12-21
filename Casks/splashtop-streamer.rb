cask :v1 => 'splashtop-streamer' do
  version '2.5.8.7'
  sha256 '8ea2d35725050322e024d0b8b699a5d6e16ff213b65e3512d03e89f8b7dd029d'

  url "https://d17kmd0va0f0mp.cloudfront.net/mac/Splashtop_Streamer_MAC_v#{version}.dmg"
  homepage 'http://www.splashtop.com/downloads'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Splashtop Streamer.pkg'

  uninstall :pkgutil => 'com.splashtop.splashtopStreamer.*'
end
