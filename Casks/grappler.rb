class Grappler < Cask
  version :latest
  sha256 :no_check

  url 'https://files.thelittleappfactory.com/grappler/Grappler.zip'
  appcast 'https://files.thelittleappfactory.com/grappler/appcast.xml'
  homepage 'https://thelittleappfactory.com/grappler/'
  license :trial

  app 'Grappler.app'
end
