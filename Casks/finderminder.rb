cask :v1 => 'finderminder' do
  version :latest
  sha256 :no_check

  url 'http://www.irradiatedsoftware.com/downloads/?file=FinderMinder.zip'
  homepage 'http://www.irradiatedsoftware.com/labs/'
  license :gratis

  app 'FinderMinder.app'
end
