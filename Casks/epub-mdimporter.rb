cask 'epub-mdimporter' do
  version '1.6'
  sha256 '75a501339f6dc2f8a36efea652c4b7a6e5fd7ceedc36fe50cddb5d5379d7af76'

  url "https://github.com/jaketmp/ePub-quicklook/releases/download/v#{version}/epub.mdimporter.zip"
  homepage 'https://github.com/jaketmp/ePub-quicklook/releases'
  license :oss

  preflight do
    system 'sudo', '/usr/bin/tar', '-xf', '/Library/Caches/Homebrew/epub-mdimporter-1.6.zip', '-C', '/Library/Spotlight/'
    system 'mdimport', '-r', '/Library/Spotlight/epub.mdimporter'
  end
end
