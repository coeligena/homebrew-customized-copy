cask :v1 => 'sblaster' do
  version :latest
  sha256 :no_check

  url 'http://www.ondesoft.com/download/odsblaster_mac.dmg'
  homepage 'http://www.ondesoft.com/sblaster/'
  license :trial

  app 'sBlaster.app'
end
