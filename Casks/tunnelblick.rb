cask :v1 => 'tunnelblick' do
  version '3.6beta08_build_4371'
  sha256 '141b3cd3a4595a608e0a41be245dd67a80d531a3bcc717b97ab49a0e9d07f360'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/tunnelblick/All%20files/Tunnelblick_#{version}.dmg"
  appcast 'https://www.tunnelblick.net/appcast.rss',
          :sha256 => '7fa119cda4d782dc61cb75895c70b3572652df737c908270c48a09d67a874592'
  name 'Tunnelblick'
  homepage 'https://www.tunnelblick.net'
  license :gpl

  app 'Tunnelblick.app', :target => 'Tunnelblick Moved.app'

  uninstall :launchctl => 'net.tunnelblick.tunnelblick.LaunchAtLogin',
            :quit      => 'net.tunnelblick.tunnelblick'

  depends_on :macos => '>= :tiger'

  caveats <<-EOS.undent
    For security reasons, #{token} must be installed to /Applications,
    and will request to be moved at launch.
  EOS
end
