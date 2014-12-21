cask :v1 => 'iexplorer' do
  version '3.6.0.0'
  sha256 '78ba648551d2072f75a20aad446b9f4a9f20dd5a958906631520884cc55a1037'

  url "http://cdn.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast 'http://www.macroplant.com/iexplorer/ie3-appcast.xml',
          :sha256 => '50a537b61eec96833d145abfe25affc972579f4e01cf3876aa6596ba5320db26'
  homepage 'http://www.macroplant.com/iexplorer/'
  license :freemium

  app 'iExplorer.app'
end
