cask :v1 => 'imazing' do
  version :latest
  sha256 :no_check

  # devmate.com is the official download host per the vendor homepage
  url "https://dl.devmate.com/com.DigiDNA.iMazingMac/iMazingforMac.dmg"
  name 'iMazing'
  appcast 'http://updates.devmate.com/com.DigiDNA.iMazingMac.xml',
          :sha256 => '57e3299100e16ac2f4f828d652c5e5a104d09119fb299ad39007dec5275e07e8'
  homepage 'https://imazing.com/'
  license :commercial

  app 'iMazing.app'

  depends_on :macos => '>= :lion'

  zap :delete => [
        '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.digidna.imazingmac.sfl',
        '~/Library/Application Support/iMazing',
        '~/Library/Caches/com.DigiDNA.iMazingMac',
        '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.DigiDNA.iMazingMac',
        '~/Library/Caches/iMazing',
        '~/Library/Preferences/com.DigiDNA.iMazingMac.plist'
      ]
end
