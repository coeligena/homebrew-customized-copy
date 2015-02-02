cask :v1 => 'tunnelblick' do
  version '3.5beta06_build_4211'
  sha256 'ccbbf47e8f75b7a183dbd28d088a3439f2d48281b9e8399fe68d3d7954410f08'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/tunnelblick/All%20files/Tunnelblick_#{version}.dmg"
  appcast 'https://www.tunnelblick.net/appcast.rss',
          :sha256 => '7fa119cda4d782dc61cb75895c70b3572652df737c908270c48a09d67a874592'
  homepage 'https://code.google.com/p/tunnelblick/'
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
