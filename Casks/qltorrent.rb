cask :v1 => 'qltorrent' do
  version :latest
  sha256 :no_check

  url 'https://github.com/downloads/sillage/qltorrent/qltorrent.qlgenerator'
  name 'QLTorrent'
  homepage 'https://github.com/sillage/qltorrent'
  license :oss

  qlplugin 'qltorrent.qlgenerator'
end
