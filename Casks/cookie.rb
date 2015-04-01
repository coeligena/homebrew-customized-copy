cask :v1 => 'cookie' do
  version :latest
  sha256 :no_check
<<<<<<< HEAD
  
  url 'https://sweetpproductions.com/products/cookie/Cookie.dmg'
  appcast 'http://www.cookiestumbler.com/Software%20Updates/Cookie%20Stumbler.xml'
  homepage 'http://cookieapp.com'
=======

  url 'http://sweetpproductions.com/products/cookie/Cookie.dmg'
  name 'Cookie'
  homepage 'http://sweetpproductions.com/'
>>>>>>> c6440d1cdaded24f38c69500abe67e5b42e61746
  license :commercial
  
  app 'Cookie.app'
end
