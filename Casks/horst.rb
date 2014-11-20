cask :v1 => 'horst' do
  version :latest
  sha256 :no_check

  url 'http://penck.de/download/horst/zip/latest'
  homepage 'http://penck.de/horst/'
  license :trial

  app 'Horst.app'
end
