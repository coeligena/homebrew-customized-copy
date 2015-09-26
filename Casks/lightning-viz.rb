cask :v1 => 'lightning-viz' do
  version '1.0.1'
  sha256 ''

  url "https://github.com/lightning-viz/lightning/releases/download/v#{version}/Lightning-v#{version}-darwin-x64.dmg"
  name 'Lightning'
  homepage 'https://github.com/lightning-viz/lightning/releases'
  license :oss

  app 'Lightning.app'
end
