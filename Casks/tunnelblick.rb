cask :v1 => 'tunnelblick' do
  version '3.6beta10_build_4400'
  sha256 '724b5ec4f2396159b057e29b3278708d8d7ce356ca078f2680026a958f47e2ab'

  url "https://www.tunnelblick.net/release/Tunnelblick_#{version}.dmg"
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
