cask :v1 => 'bitshares' do
  version '0.9.1'
  sha256 'f276d2b5367e7b1937c5894aa9c58e99a9311098691eef1881e4e41697fee7ad'
  url "https://bitshares.org/binaries/BitShares-#{version}.dmg"
  
  homepage 'http://bitshares.org/'
  license :oss

  app 'BitShares.app'
end
