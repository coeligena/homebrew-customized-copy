cask :v1 => 'favs' do
  version :latest
  sha256 :no_check

  homepage '1.4.1'
  url "http://localhost:8000/Internet%2C%20Networking%20%26%20Basic%20Tools/Favs/Favs.v#{homepage}.zip"
  name 'Favs'
  license :commercial

  app "Favs.app"

  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Favs.app"
  end
end
