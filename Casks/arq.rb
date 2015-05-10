cask :v1 => 'arq' do
  version :latest
  sha256 :no_check

  url 'https://www.arqbackup.com/download/Arq_OSX.zip'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'
  license :commercial

  app 'Arq.app'
end
