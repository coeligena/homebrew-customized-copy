cask :v1 => 'ipswdownloader' do
  version :latest
  sha256 :no_check

  url "http://www.igrsoft.com/wp-content/plugins/download-monitor/download.php?id=65"
  homepage 'http://www.igrsoft.com/en/ipswdownloader/'
  license :oss

  app 'ipswDownloader.app'
end
