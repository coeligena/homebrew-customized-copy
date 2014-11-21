cask :v1 => 'processes' do
  version '1.0.1'
  sha256 ''

  url 'https://www.oneperiodic.com/files/Processes%20v#{version}.zip'
  homepage 'http://www.oneperiodic.com/products/processes/'
  license :trial

  app 'Processes.app'
end
