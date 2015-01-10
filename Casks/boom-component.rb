cask :v1 => 'boom-component' do
  version '1.3'
  sha256 '04e256828e4fc89fa0d4bd6745d1b37c056b78727131d0173685f4ed87ff7fdc'

  url "http://globaldelight.com/boom/download/device/version#{version}/fresh/BoomDevice.zip"
  homepage 'http://www.globaldelight.com/boom/'
  license :commercial

  pkg 'Boom Device Installer.pkg'
end
