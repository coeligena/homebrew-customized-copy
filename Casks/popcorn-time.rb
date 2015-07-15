cask :v1 => 'popcorn-time' do
  version '0.3.8'
  sha256 'f1c7edbb24ee582b44e30eb880f81c9140d7c8035f6484283a1f0e45fb840ddc'

  # url "https://get.popcorntime.io/build/Popcorn-Time-#{version}-0-Mac.dmg"
  url "http://178.62.189.137/build/Popcorn-Time-#{version}-0-Mac.dmg"
  homepage 'https://www.popcorntime.io/'
  license :oss

  app 'Popcorn-Time.app'
end
