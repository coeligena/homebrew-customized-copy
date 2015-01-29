cask :v1 => 'movist' do
  version :latest
  sha256 :no_check

  homepage '1.3.15'
  url "http://localhost:8000/Media%20Players%20%26%20Tools/Movist/Movist-#{homepage}.dmg"
  license :oss

  app 'Movist.app'

  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Movist.app"
  end
end
