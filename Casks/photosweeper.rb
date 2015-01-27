cask :v1 => 'photosweeper' do
  version :latest
  sha256 :no_check

  url 'http://overmacs.com/photosweeper/downloads/PhotoSweeperDemo.dmg'
  name 'PhotoSweeper'
  homepage 'http://overmacs.com/photosweeper.html'
  license :commercial

  app 'PhotoSweeper Demo.app', :target => 'PhotoSweeper.app'
end
