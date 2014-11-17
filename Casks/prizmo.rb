class Prizmo < Cask
  version '3'
  sha256 '309ee4e6d19ad8bfb03dd990909d82515e08b778bb3ac09c2736254fb8259bf4'
  
  url 'http://www.creaceed.com/downloads/prizmo3.zip'
  appcast 'http://www.creaceed.com/appcasts/prizmo3.xml'
  homepage 'http://www.creaceed.com/prizmo'
  license :trial
  
  app 'Prizmo.app'
end
