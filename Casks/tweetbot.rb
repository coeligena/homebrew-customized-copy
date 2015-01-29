cask :v1 => 'tweetbot' do
  version :latest
  sha256 :no_check

  homepage '1.6.1'
  url "http://localhost:8000/Internet%2C%20Networking%20%26%20Basic%20Tools/Tweetbot/Tweetbot%20#{homepage}.dmg"
  name 'Tweetbot'
  license :commercial

  app 'Tweetbot.app'
  
  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Tweetbot.app"
  end
end
