cask :v1 => 'downcast' do
  version :latest
  sha256 :no_check

  homepage '1.1.7'
  url "http://localhost:8000/Internet%2C%20Networking%20%26%20Basic%20Tools/Downcast/Downcast%20#{homepage}.zip"
  name 'Downcast'
  license :commercial

  app 'Downcast.app'

  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Downcast.app"
  end
end
