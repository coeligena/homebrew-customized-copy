cask :v1 => 'processes' do
  version '1.0.1'
  sha256 '032ae96e845073102dac2183b73e6bb6438a224aa04db51c24676333e6d7d0b2'

  url "https://www.oneperiodic.com/files/Processes%20v#{version}.zip"
  homepage 'http://www.oneperiodic.com/products/processes/'
  license :trial

  app 'Processes.app'
end
