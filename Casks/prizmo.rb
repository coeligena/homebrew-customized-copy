cask :v1 => 'prizmo' do
  version :latest
  sha256 :no_check
  
  url "http://www.creaceed.com/downloads/prizmo3.zip"
  appcast 'http://www.creaceed.com/appcasts/prizmo3.xml',
          sha256 => 'bee39edd6664aad47129cb215867aa8eb0b396fcc83f5e31110f98f43f7e15b0'
  name 'Prizmo'
  homepage 'http://www.creaceed.com/prizmo'
  license :freemium

  depends_on :macos => '>= :yosemite'

  app 'Prizmo.app'
end
