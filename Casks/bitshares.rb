cask :v1 => 'bitshares' do
  version '0.4.26'
  sha256 '6f80d2f42b0bf7302e1c544396afec69450116875a73f5a78755bf907ed3a008'
  url "http://bitshares.org/download/client/BitShares-v#{version}.dmg"
  
  homepage 'http://bitshares.org/'
  license :oss

  app 'BitShares.app'
end
