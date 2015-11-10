cask :v1 => 'blu-ray-player' do
  version :latest
  sha256 :no_check

  homepage '2.11.0'
  url "http://localhost:8000/Media%20Players%20%26%20Tools/Blu-ray%20Player/Blu-ray%20Player%20#{homepage}%20K.dmg"
  name 'Macgo Mac Blu-ray Player'
  #homepage 'http://www.macblurayplayer.com/'
  license :commercial
  tags :vendor => 'Macgo'

  app 'Blu-ray Player.app'

  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Blu-ray Player.app"
  end
end
