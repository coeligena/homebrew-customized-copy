cask 'tunnelblick' do
  version '3.6beta20_build_4505'
  sha256 '59d9515526be9df017c98771af6cc532f7e111a810588ae604e6237cabe65439'

  url "https://www.tunnelblick.net/release/Tunnelblick_#{version}.dmg"
  appcast 'https://www.tunnelblick.net/appcast.rss',
          :sha256 => '7fa119cda4d782dc61cb75895c70b3572652df737c908270c48a09d67a874592'
  name 'Tunnelblick'
  homepage 'https://www.tunnelblick.net'
  license :gpl

  depends_on :macos => '>= :tiger'

  app 'Tunnelblick.app', :target => 'Tunnelblick Moved.app'

  uninstall :launchctl => 'net.tunnelblick.tunnelblick.LaunchAtLogin',
            :quit      => 'net.tunnelblick.tunnelblick'

  caveats <<-EOS.undent
    For security reasons, #{token} must be installed to /Applications,
    and will request to be moved at launch.
  EOS
end
