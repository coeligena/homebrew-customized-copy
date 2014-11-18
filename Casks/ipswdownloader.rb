cask :v1 => 'ipswdownloader' do
  version :latest
  sha256 :no_check

  url "http://www.igrsoft.com/wp-content/plugins/download-monitor/download.php?id=65"
  homepage 'http://www.igrsoft.com/en/ipswdownloader/'
  license :oss

  preflight do
    system '/bin/mv', '--', '/Library/Caches/Homebrew/ipswdownloader-latest.php', '/Library/Caches/Homebrew/ipswdownloader-latest.zip'
  end
  container :nested => 'ipswDownloader.dmg'

  app 'ipswDownloader.app'
end
