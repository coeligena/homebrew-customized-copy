class Torrentv < Cask
  version '0.9.6'
  sha256 ''
  
  url "https://raw.githubusercontent.com/TorrenTV/Installers/master/mac/TorrenTV-#{version}-Mac.dmg"
  homepage 'https://torrentv.github.io'
  license :oss
  
  app "TorrenTV.app"
end
