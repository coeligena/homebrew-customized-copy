cask :v1 => 'yep' do
  version :latest
  sha256 :no_check

  homepage '3.6.0'
  url "http://localhost:8000/Office%2C%20Productivity%20%26%20Planning/Yep/Yep%20#{homepage}.zip"
  name 'Yep'
  #homepage 'http://www.ironicsoftware.com/yep/'
  license :commercial

  app 'Yep.app'

  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Yep.app"
    system 'open', "#{ENV['CUSTOM_CASK_DIR']}/Office, Productivity & Planning/Yep/"
    suppress_move_to_applications :key => 'suppressMoveToApplications'
  end
  
  caveats <<-EOS.undent
    DO MORE...
  EOS
end
