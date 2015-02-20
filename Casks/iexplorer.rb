cask :v1 => 'iexplorer' do
  version :latest
  sha256 :no_check

  homepage '3.6.6.0'
  url "http://localhost:8000/Mobile/iOS%20Tools/iExplorer/iExplorer-#{homepage}.dmg"
  appcast 'http://www.macroplant.com/iexplorer/ie3-appcast.xml',
          :sha256 => '50a537b61eec96833d145abfe25affc972579f4e01cf3876aa6596ba5320db26'
  license :freemium

  app 'iExplorer.app'

  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/iExplorer.app"
    system 'open', "#{ENV['CUSTOM_CASK_DIR']}/Mobile/iOS Tools/iExplorer/"
    suppress_move_to_applications :key => 'suppressMoveToApplications'
  end
  
  caveats <<-EOS.undent
    DO MORE...
  EOS
end
