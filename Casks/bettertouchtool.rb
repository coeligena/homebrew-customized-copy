cask 'bettertouchtool' do
  if MacOS.release <= :snow_leopard
    version '0.939'
    sha256 'fad5e9d36259c379bdb33188cf15d179fd9ff73023035c98f5734e7e3e13bb75'

    # bettertouchtool.com is the official download host per the vendor homepage
    url "http://bettertouchtool.net/btt#{version}.zip"
  else
    version :latest
    sha256 :no_check

    url "http://bettertouchtool.net/BetterTouchTool.zip"
    appcast 'http://appcast.boastr.net',
            :sha256 => '52653a90c3c0940803325ac01aca538f7f8b431e4bca9dfa664489a16bc83d4f'
  end

  name 'BetterTouchTool'
  homepage 'http://boastr.net/'
  license :gratis

  auto_updates true
  accessibility_access true

  app 'BetterTouchTool.app'

  uninstall :login_item => 'BetterTouchTool'

  zap :delete => [
                   '~/Library/Preferences/com.hegenberg.BetterTouchTool.plist',
                   '~/Library/Application Support/BetterTouchTool',
                 ]
end
