cask :v1 => 'igadget-manager' do
  version :latest
  sha256 :no_check

  url "http://www.igrsoft.com/wp-content/plugins/download-monitor/download.php?id=56"
  homepage 'http://www.igrsoft.com/en/igadget-manager/'
  license :gratis

  preflight do
    system '/bin/mv', '--', staged_path.join('igadget-manager-latest.php'), destination_path.join('igadget-manager-latest.zip')
  end

  app 'iGadget Manager.app'
end
