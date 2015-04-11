cask :v1 => 'jitsi' do
  version :latest
  sha256 :no_check

  url "https://download.jitsi.org/jitsi/macosx/jitsi-latest.dmg"
  appcast 'https://download.jitsi.org/jitsi/macosx/sparkle/updates.xml',
          :sha256 => 'db2939816e8a38c7197160ab455626af9aadc2c5603f2212e372cffb85b31949'
  name 'Jitsi'
  homepage 'https://jitsi.org/'
  license :gpl

  app 'Jitsi.app'
end
