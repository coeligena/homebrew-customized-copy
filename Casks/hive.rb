cask :v1 => 'hive' do
  version '1.4.2'
  sha256 '94b92d963c2b6f7c33ae0d0ced1de7df554f86331178c38516ef7327b1cda695'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/hivewallet/hive-osx/releases/download/#{version}/Hive-#{version}.zip"
  appcast 'https://github.com/hivewallet/hive-osx/releases.atom'
<<<<<<< HEAD
  homepage 'https://www.hivewallet.com'
=======
  homepage 'https://mac.hivewallet.com'
>>>>>>> c6440d1cdaded24f38c69500abe67e5b42e61746
  license :gpl

  app 'Hive.app'

  postflight do
    suppress_move_to_applications
  end
end
