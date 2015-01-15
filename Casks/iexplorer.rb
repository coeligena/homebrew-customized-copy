cask :v1 => 'iexplorer' do
  version :latest
  sha256 :no_check

  url "http://www.macroplant.com/latest-binaries/iexplorer-mac.dmg"
  appcast 'http://www.macroplant.com/iexplorer/ie3-appcast.xml',
          :sha256 => '50a537b61eec96833d145abfe25affc972579f4e01cf3876aa6596ba5320db26'
  homepage 'http://www.macroplant.com/iexplorer/'
  license :freemium

  app 'iExplorer.app'
end
