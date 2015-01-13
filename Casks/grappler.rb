cask :v1 => 'grappler' do
  version :latest
  sha256 :no_check

  url 'https://files.thelittleappfactory.com/grappler/Grappler.zip'
  appcast 'https://files.thelittleappfactory.com/grappler/appcast.xml'
  homepage 'https://thelittleappfactory.com/grappler/'
  license :commercial

  app 'Grappler.app'
end
