cask :v1 => 'subsmarine' do
  version '1.2.1'
  sha256 '303115700d6dd8d925a3b7d0bef81f87a217aba1696f0b346c94eb2a54bba3d0'

  url "http://www.cocoawithchurros.com/downloads/SubsMarine.#{version}.zip"
  appcast 'http://www.cocoawithchurros.com/shine/appcast.php?id=7',
          :sha256 => '9659830b134ac12326639e1b3f7ba06945cc18db343890e06a4c7f9d9dce8912'
  homepage 'http://www.cocoawithchurros.com/subsmarine.php'
  license :commercial

  app 'SubsMarine.app'
end
