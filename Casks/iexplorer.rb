cask :v1 => 'iexplorer' do
  version :latest
  sha256 :no_check

  homepage '3.6.7.0'
  url "http://localhost:8000/Mobile/iOS%20Tools/iExplorer/iExplorer-#{homepage}.zip"
  appcast 'http://www.macroplant.com/iexplorer/ie3-appcast.xml',
          :sha256 => 'd5a2ea8f6072e499a2cbed60dbae5952c7bc5a7ea3fa6fc79549c0033e77f84c'
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
