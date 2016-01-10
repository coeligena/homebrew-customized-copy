cask 'epub-quicklook' do
  version '1.6'
  sha256 '1292126f0448a2b42c1aa06ff8de8d657d55e92f7b524f6069a776990a63e26f'

  url "https://github.com/jaketmp/ePub-quicklook/releases/download/v#{version}/epub.qlgenerator.zip"
  homepage 'https://github.com/jaketmp/ePub-quicklook/releases'
  license :oss

  qlplugin 'epub.qlgenerator'
end
