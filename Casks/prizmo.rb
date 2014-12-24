cask :v1 => 'prizmo' do
  version '3.0.1'
  sha256 '270077128ebeff1f555362254a72a14e6f9ef060316b5a2d4faed642e2362b58'
  
  url 'http://www.creaceed.com/downloads/prizmo3.zip'
  appcast 'http://www.creaceed.com/appcasts/prizmo3.xml'
  homepage 'http://www.creaceed.com/prizmo'

  license :commercial
  
  app 'Prizmo.app'
end
