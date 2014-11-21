cask :v1 => 'tuck' do
  version :latest
  sha256 :no_check

  url 'http://www.irradiatedsoftware.com/download/Tuck.zip'
  homepage 'http://www.irradiatedsoftware.com/labs/'
  license :gratis

  app 'Tuck.app'
end
