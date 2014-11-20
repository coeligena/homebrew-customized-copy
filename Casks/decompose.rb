cask :v1 => 'decompose' do
  version '1.2.1'
  sha256 '68d4dcc0d8969d9b198bb7bdb32808dc2b90d6eb92ccf8d454c141b069b703d9'
  
  url "https://www.oneperiodic.com/files/Decompose%20v#{version}.zip"
  homepage 'https://www.oneperiodic.com/products/decompose/'
  license :trial
  
  app 'Decompose.app'
end
