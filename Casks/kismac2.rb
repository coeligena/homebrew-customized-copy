cask :v1 => 'kismac2' do
  version :latest
  sha256 :no_check

  url "http://www.igrsoft.com/wp-content/plugins/download-monitor/download.php?id=58"
  homepage 'http://www.igrsoft.com/en/kismac2/'
  license :oss

  preflight do
    system '/bin/mv', '--', staged_path.join('kismac2-latest.php'), destination_path.join('kismac2-latest.zip')
  end
  app 'KisMac2.app'
end
