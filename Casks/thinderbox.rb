cask :v1 => 'thinderbox' do
  version '6.1.1'
  sha256 '37bc2a219f85b6c7e947d59523d78801faff59bef4e9a98097060a11a489d76b'

  url "http://www.eastgate.com/download/tbx#{version.gsub('.','')}.dmg"
  homepage 'http://www.eastgate.com/Tinderbox/'
  license :trial

  app 'Thinderbox.app'
end
