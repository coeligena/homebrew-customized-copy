cask :v1 => 'isonics' do
  version :latest
  sha256 :no_check

  url 'http://www.osxbytes.com/iSonics.dmg'
  homepage 'http://www.osxbytes.com/page4/index.html?forcedownload'
  license :gratis

  app 'iSonics.app'
end
