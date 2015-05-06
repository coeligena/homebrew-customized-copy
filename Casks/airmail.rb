cask :v1 => 'airmail' do
  version :latest
  sha256 :no_check
  
  homepage '2.1'
  url "http://localhost:8000/Internet%2C%20networking%20%26%20Basic%20Tools/Airmail/Airmail%20#{homepage}.zip"
  name 'Airmail'
  license :commercial

  app 'Airmail 2.app'

  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Airmail 2.app"
  end
end
