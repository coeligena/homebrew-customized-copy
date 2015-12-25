cask 'prizmo' do
  version :latest
  sha256 :no_check
  
  url "http://www.creaceed.com/downloads/prizmo3.zip"
  appcast 'http://www.creaceed.com/appcasts/prizmo3.xml',
          :sha256 => '879492687d7a7bc8bd4ab31c8853c8ccd5b47b3cf9d351a4ec7e4c95ab7b1834'
  name 'Prizmo'
  homepage 'http://www.creaceed.com/prizmo'
  license :freemium

  depends_on :macos => '>= :yosemite'

  app 'Prizmo.app'
end
