cask :v1 => 'lasthistory' do
  version '1.0.1'
  sha256 'acf29e04bb6bd647bdb3476b9312b684d82511cb5be646cec8b8a3dda40709b5'

  url "https://github.com/downloads/triplef/LastHistory/LastHistory_#{version}.zip"
  name 'LastHistory'
  homepage 'http://www.frederikseiffert.de/lasthistory/'
  license :oss

  app 'LastHistory/LastHistory.app'
end
