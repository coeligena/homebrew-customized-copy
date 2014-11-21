cask :v1 => 'slicereader' do
  version '0.1'
  sha256 '026048b90573287e865c4406049cbff60fd8e8501ad0ba2a773310fbe2debe5d'

  url 'https://s3.amazonaws.com/slicereader/Slicereader.zip'
  homepage 'http://mthr.me/slicereader-0.1/index.html'
  license :unknown

  app 'Slicereader.app'
end
