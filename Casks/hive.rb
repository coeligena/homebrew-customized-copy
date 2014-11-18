class Hive < Cask
  version '1.4.1'
  sha256 '380f056ee5f88c86e69f1f08723db341aa482f36eb048972664d661f44efa58b'
  
  url "https://github.com/hivewallet/hive-osx/releases/download/#{version}/Hive-#{version}.zip"
  appcast 'https://hivewallet.com/hive-osx-appcast.xml'
  homepage 'https://www.hivewallet.com'
  license :oss
  
  app 'Hive.app'

  postflight do
    suppress_move_to_applications
  end
end
