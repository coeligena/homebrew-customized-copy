cask :v1 => 'commander-one' do
  version :latest
  sha256 :no_check

  url 'http://mac.eltima.com/download/commander.dmg'
  name 'Commander One'
  homepage 'http://mac.eltima.com/file-manager.html'
  license :freemium

  app 'Commander One.app'
end
