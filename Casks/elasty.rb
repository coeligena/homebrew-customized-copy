cask :v1 => 'elasty' do
  version :latest
  sha256 :no_check

  url 'http://www.creaceed.com/downloads/elasty2.zip'
  appcast 'http://www.creaceed.com/appcasts/elasty.xml'
  homepage 'http://www.creaceed.com/elasty'
  license :trial

  app 'Elasty'
end
