cask :v1 => 'clipbuddy' do
  version :latest
  sha256 :no_check

  url 'http://www.ondesoft.com/download/odclipbuddy_mac.dmg'
  homepage 'http://www.ondesoft.com/clipbuddy_mac/'
  license :trial

  app 'ClipBuddy.app'
end
