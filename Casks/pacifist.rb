cask :v1 => 'pacifist' do
  version :latest
  sha256 :no_check

  homepage '3.5'
  url "http://localhost:8000/Tools%20%26%20Utilities/Pacifist/Pacifist_#{homepage}.zip"
  name 'Pacifist'
  license :commercial

  app 'Pacifist.app'

  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Pacifist.app"
    system 'open', "#{ENV['CUSTOM_CASK_DIR']}/Tools & Utilities/Pacifist/"
    suppress_move_to_applications :key => 'suppressMoveToApplications'
  end
  
  caveats <<-EOS.undent
    DO MORE...
  EOS
end
