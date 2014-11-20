cask :v1 => 'cookie-stumbler' do
  version :latest
  sha256 :no_check
  
  url 'https://cookiestumbler.s3.amazonaws.com/Cookie%20Stumbler.dmg'
  appcast 'http://www.cookiestumbler.com/Software%20Updates/Cookie%20Stumbler.xml'
  homepage 'http://www.writeitstudios.com/cookiestumbler.php'
  license :trial
  
  app 'Cookie Stumbler.app'
end
