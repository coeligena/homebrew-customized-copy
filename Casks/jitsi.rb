<<<<<<< HEAD
cask :v1 => 'jitsi' do
  version :latest
  sha256 :no_check
=======
cask 'jitsi' do
  version '2.8.5426'
  sha256 '91980b803ba5c165c5ec109b784a7338bf5d1af2f866c513baf114bbda2953a4'
>>>>>>> 178fd913ed615bea0fddca23b80452f3345a96ca

  url "https://download.jitsi.org/jitsi/macosx/jitsi-latest.dmg"
  appcast 'https://download.jitsi.org/jitsi/macosx/sparkle/updates.xml',
          :sha256 => 'db2939816e8a38c7197160ab455626af9aadc2c5603f2212e372cffb85b31949'
  name 'Jitsi'
  homepage 'https://jitsi.org/'
  license :gpl

  app 'Jitsi.app'
end
