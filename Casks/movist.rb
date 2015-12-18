cask 'movist' do
  version :latest
  sha256 :no_check

  homepage '1.3.16'
  name 'Movist'
  url "http://localhost:8000/Media%20Players%20%26%20Tools/Movist/Movist-#{homepage}.dmg"
  license :gpl

  app 'Movist.app'

  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Movist.app"
  end
end
