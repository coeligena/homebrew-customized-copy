cask :v1 => 'tiled' do
  version '0.10.2'
  sha256 'e96636aa597375304729a9bb20f17b1b3a1bf4ffef6a0060ba65deb0bfc2aee0'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/tiled-#{version}.dmg"
  name 'Tiled'
  homepage 'http://www.mapeditor.org/'
  license :gpl

  app 'Tiled.app'
end
