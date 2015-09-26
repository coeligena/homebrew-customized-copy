cask :v1 => 'imazing' do
  version :latest
  sha256 :no_check

  # devmate.com is the official download host per the vendor homepage
  url "https://dl.devmate.com/com.DigiDNA.iMazingMac/iMazingforMac.dmg"
  name 'iMazing'
  appcast 'http://updates.devmate.com/com.DigiDNA.iMazingMac.xml',
          :sha256 => '396e01d8a69fa6a43886a90dd3a9e10f2febfc4397cf29aaacd7e9e0aa0aaeab'
  homepage 'https://imazing.com/'
  license :commercial

  app 'iMazing.app'

  depends_on :macos => '>= :lion'
end
