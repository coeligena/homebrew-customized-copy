cask :v1 => 'firefox' do
<<<<<<< HEAD
  version :latest
  sha256 :no_check
=======
  version '37.0'
  sha256 'ef919ab70c6432f754cf6367517a9fcc4ddb02336f197c74a9cb216c25c242fc'
>>>>>>> c6440d1cdaded24f38c69500abe67e5b42e61746

  url "https://download.mozilla.org/?product=firefox-latest&os=osx&lang=en-US"
  name 'Firefox'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/en-US/firefox/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
