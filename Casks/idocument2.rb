cask 'idocument2' do
  version :latest
  sha256 :no_check

  url 'http://t.icyblaze.com/id2latest'
  appcast 'http://t.icyblaze.com/id2c4ud'
  homepage 'http://www.icyblaze.com/idocument/'
  license :commercial

  app 'iDocument 2.app'
end
