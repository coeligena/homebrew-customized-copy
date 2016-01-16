cask 'ialertu' do
  version :latest
  sha256 :no_check

  url 'http://sourceforge.net/projects/ialertu/files/latest/download'
  name 'iAlertU'
  homepage 'http://sourceforge.net/projects/ialertu/'
  license :oss

  app 'iAlertU.app'
  
  uninstall :delete => [
      '~/iAlertU_*.jpg'
    ]
  
  zap :delete => [
      '~/Library/Preferences/com.slappingturtle.iAlertU.plist',
      '~/Library/Application Support/iAlertU'
    ]
end
