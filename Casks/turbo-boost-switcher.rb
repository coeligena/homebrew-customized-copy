cask :v1 => 'turbo-boost-switcher' do
  version '1.2.0'
  sha256 'c1b42d0aac3114a0bef8bfcdbfc948387738fd333210e58563c0c161d29dcb9a'

  url "https://s3.amazonaws.com/turbo-boost-switcher/TurboBoostSwitcherv#{version}.zip"
  homepage 'http://www.rugarciap.com/turbo-boost-switcher-for-os-x/'
  license :oss

  app 'Turbo Boost Switcher.app'
  
  uninstall :kext =>  [
                       'DisableTurboBoost.64bits.kext',
                       'DisableTurboBoost.32bits.kext'
                      ]
end
