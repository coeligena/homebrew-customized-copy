cask :v1 => 'reeder' do
  version :latest
  sha256 :no_check

  homepage '2.5.3'
  url "http://localhost:8000/Internet%2C%20Networking%20%26%20Basic%20Tools/Reeder%20#{homepage.sub(%r{^(\d+).*},'\1')}/Reeder%20#{homepage}.dmg"
  name 'Reeder'
  license :commercial

  app 'Reeder.app'

  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Reeder.app"
  end
end
