cask :v1 => 'hive' do
  version '1.4.2'
  sha256 '94b92d963c2b6f7c33ae0d0ced1de7df554f86331178c38516ef7327b1cda695'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/hivewallet/hive-osx/releases/download/#{version}/Hive-#{version}.zip"
  appcast 'https://hivewallet.com/hive-osx-appcast.xml',
          :sha256 => '53a58f4b4bc888cde3e036ee3b09b44f0ba19b321492c82a93acc01891d310e1'
  homepage 'https://www.hivewallet.com'
  license :gpl

  app 'Hive.app'

  postflight do
    suppress_move_to_applications
  end
end
