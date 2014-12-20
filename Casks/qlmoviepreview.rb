cask :v1 => 'qlmoviepreview' do
  version :latest
  sha256 :no_check

  url "http://repo.whine.fr/qlmoviepreview.qlgenerator-10.9.zip"
  homepage 'https://github.com/Nyx0uf/qlMoviePreview'
  license :oss

  qlplugin 'qlMoviePreview.qlgenerator'
end
