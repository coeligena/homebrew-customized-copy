cask 'maccleanse' do
  version :latest
  sha256 :no_check

  url 'https://www.koingosw.com/products/getmirrorfile.php?path=%2Fproducts%2Fmaccleanse%2Fdownload%2Fmaccleanse.dmg'
  name 'MacCleanse'
  homepage 'https://www.koingosw.com/products/maccleanse/'
  license :commercial

  app 'MacCleanse.app'
end
