cask :v1 => 'tunnelblick' do
  version '3.5beta10_build_4262'
  sha256 '77b2c0699b26242de1b207d2ed6f06341b0672781cba51d7ecae28646a670f71'

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
