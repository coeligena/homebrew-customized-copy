cask :v1 => 'cookie' do
  version :latest
  sha256 :no_check
  
  url 'https://sweetpproductions.com/products/cookie/Cookie.dmg'
  appcast 'http://www.cookiestumbler.com/Software%20Updates/Cookie%20Stumbler.xml'
  homepage 'http://cookieapp.com'
  license :trial
  
  app 'Cookie.app'
end
