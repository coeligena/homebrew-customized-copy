cask :v1 => 'elmedia-player-pro' do
  version :latest
  sha256 :no_check

  url 'http://mac.eltima.com/download/elmediaplayer.dmg'
  appcast 'http://mac.eltima.com/download/elmediaplayer-update/elmediaplayer.xml'
  homepage 'http://mac.eltima.com/media-player.html'
  license :trial

  app 'Elmedia Player Pro.app'
end
