cask :v1 => 'prizmo' do
  version :latest
  sha256 :no_check
  
  url "http://www.creaceed.com/downloads/prizmo3.zip"
  appcast 'http://www.creaceed.com/appcasts/prizmo3.xml'
  name 'Prizmo'
  homepage 'http://www.creaceed.com/prizmo'

  license :commercial
  
  app 'Prizmo.app'
end
