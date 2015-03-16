cask :v1 => 'quiver' do
  version :latest
  sha256 :no_check

  homepage '2.1.2'
  url "http://localhost:8000/Development/Quiver/Quiver%20#{homepage}.zip"
  name 'Quiver'
  license :commercial

  app 'Quiver.app'
  
  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Quiver.app"
  end
end
