cask :v1 => 'tuck' do
  version :latest
  sha256 :no_check

  url 'http://www.irradiatedsoftware.com/downloads/Tuck.zip'
  appcast 'http://www.irradiatedsoftware.com/updates/profiles/tuck.php'
  homepage 'http://www.irradiatedsoftware.com/labs/'
<<<<<<< HEAD
  license :gratis
=======
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder
>>>>>>> caskroom/homebrew-cask/master

  app 'Tuck.app'

  zap :delete => [
                  '~/Library/Preferences/com.irradiatedsoftware.Tuck.plist',
                 ]
end
