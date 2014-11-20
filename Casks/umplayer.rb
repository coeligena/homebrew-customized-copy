cask :v1 => 'umplayer' do
  version :latest
  sha256 :no_check

  url 'http://www.umplayer.com/download/download.php?os=mac'
  homepage 'http://www.umplayer.com'
  license :oss

  pkg 'UMPlayer.pkg'
end
