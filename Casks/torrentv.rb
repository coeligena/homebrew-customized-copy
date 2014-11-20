cask :v1 => 'torrentv' do
  version '0.9.6'
  sha256 :no_check
  
  url "https://raw.githubusercontent.com/TorrenTV/Installers/master/mac/TorrenTV-#{version}-Mac.dmg"
  homepage 'https://torrentv.github.io'
  license :oss
  
  app "TorrenTV.app"
end
