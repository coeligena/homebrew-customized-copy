cask :v1 => 'photosweeper' do
  version :latest
  sha256 :no_check

  homepage '2.0.1'
  url "http://localhost:8000/Design%2C%20Photo%20%26%20Video%20Tools%20%26%20Editors/PhotoSweeper/PhotoSweeper%20#{homepage}.zip"
  name 'PhotoSweeper'
  license :commercial
  
  app 'PhotoSweeper.app', :target => 'PhotoSweeper.app'
end
