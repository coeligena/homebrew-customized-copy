cask :v1 => 'flash-ppapi' do
  version '18.0.0.160'
  sha256 '41411167b9c7df82e0ba1e59d8e92ade6d1a241a8a1fae5607fa8eff845f52ba'

  # macromedia.com is the official download host per the vendor homepage
  url "https://fpdownload.macromedia.com/get/flashplayer/pdc/#{version}/install_flash_player_osx_ppapi.dmg"
  name 'Adobe Flash Player'
  homepage 'https://www.adobe.com/products/flashplayer/distribution3.html'
  license :gratis
  tags :vendor => 'Adobe'

  installer :manual => 'Install Adobe Pepper Flash Player.app'

  uninstall :pkgutil => 'com.adobe.pkg.FlashPlayer',
            :delete  => '/Library/Internet Plug-Ins/PepperFlashPlayer/PepperFlashPlayer.plugin'
  zap       :delete => [
                        '~/Library/Caches/Adobe/Flash Player',
                        '~/Library/Logs/FlashPlayerInstallManager.log',
                       ]
end
