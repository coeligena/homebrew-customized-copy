cask :v1 => 'appbolish' do
  version :latest
  sha256 :no_check

  url "http://www.koingosw.com/products/getmirrorfile.php?path=%2Fproducts%2Fappbolish%2Fdownload%2Fappbolish.dmg"
  name 'AppBolish'
  homepage 'http://www.koingosw.com/products/appbolish/'
  license :trial

  app 'AppBolish.app'
end
