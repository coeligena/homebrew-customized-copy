cask :v1 => 'deep' do
  version :latest
  sha256 :no_check

  homepage '1.5.4'
  url "http://localhost:8000/Design%2C%20Photo%20%26%20Video%20Tools%20%26%20Editors/Deep/Deep%20#{homepage}.zip"
  name 'Deep'
  license :commercial

  app 'Deep.app'

  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Deep.app"
    system 'open', "#{ENV['CUSTOM_CASK_DIR']}/Design, Photo & Video Tools & Editors/Deep/"
    suppress_move_to_applications :key => 'suppressMoveToApplications'
  end
  
  caveats <<-EOS.undent
    DO MORE...
  EOS
end
