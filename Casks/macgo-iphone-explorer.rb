cask :v1 => 'macgo-iphone-explorer' do
  version :latest
  sha256 :no_check

  url "http://www.macblurayplayer.com/user/download/iphone_explorer_mac.dmg"
  homepage 'https://www.marketcircle.com/iphoney'
  license :gratis

  app 'Macgo iPhone Explorer.app'
end
