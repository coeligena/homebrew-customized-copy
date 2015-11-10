cask :v1 => 'favs' do
  version :latest
  sha256 :no_check

  homepage '1.4.1'
  url "http://localhost:8000/Internet%2C%20Networking%20%26%20Basic%20Tools/Favs/Favs.v#{homepage}.zip"
  name 'Favs'
  appcast 'http://www.apperdeck.com/shine/appcast_favs.php',
          :sha256 => 'ee1fd47740641e80ff66fe8f6f456cc5c1a8b5202f9045f8e3ee3b023fbbc89c'
  #homepage 'http://www.favsapp.com'
  license :commercial

  app 'Favs.app'

  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Favs.app"
  end
end
