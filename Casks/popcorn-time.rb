cask :v1 => 'popcorn-time' do
  version '0.3.6'
  sha256 '48419eaa34ab31ca071e010ff49c065ba23ad06bd8f1b50349308980e937dfeb'

  url "https://get.popcorntime.io/build/Popcorn-Time-#{version}-Mac.dmg"
  homepage 'https://www.popcorntime.io/'
  license :oss

  app 'Popcorn-Time.app'
end
