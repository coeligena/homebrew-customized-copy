cask :v1 => 'tunnelblick' do
  version '3.5beta02_build_4165'
  sha256 'aaef63624f2aa8ba73147c432de20ef49a5c03ada5a9901edadb8c6e51e2a2c7'

  url "http://downloads.sourceforge.net/project/tunnelblick/All%20files/Tunnelblick_#{version}.dmg"
  appcast 'https://www.tunnelblick.net/appcast.rss',
          :sha256 => '7fa119cda4d782dc61cb75895c70b3572652df737c908270c48a09d67a874592'
  homepage 'https://code.google.com/p/tunnelblick/'
  license :gpl

  app 'Tunnelblick.app'

  uninstall :launchctl => 'net.tunnelblick.tunnelblick.LaunchAtLogin',
            :quit      => 'net.tunnelblick.tunnelblick'

  depends_on :macos => '>= :tiger'

  caveats do
    <<-EOS.undent
    For security reasons, Tunnelblick must be installed to /Applications,
    and will request to be moved at launch.
    EOS
  end
end
