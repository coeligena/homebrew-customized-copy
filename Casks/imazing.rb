cask :v1 => 'imazing' do
  version :latest
  sha256 :no_check

  # devmate.com is the official download host per the vendor homepage
  url "https://dl.devmate.com/com.DigiDNA.iMazingMac/iMazingforMac.dmg"
  name 'iMazing'
  appcast 'http://updates.devmate.com/com.DigiDNA.iMazingMac.xml',
          :sha256 => 'b5ff3d4d493f31ce59b7f6803dd7407e84128a0ed71681130ba90e86cd2e93e3'
  homepage 'https://imazing.com/'
  license :commercial

  app 'iMazing.app'
end
