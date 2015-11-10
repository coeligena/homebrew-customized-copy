cask :v1 => 'omniplan' do
  version :latest
  sha256 :no_check

  homepage '2.3.7'
  url "http://localhost:8000/Office%2C%20Productivity%20%26%20Planning/OmniPlan/OmniPlan-#{homepage}.dmg"
  name 'OmniPlan'
  #homepage 'https://www.omnigroup.com/omniplan/'
  license :commercial

  app 'OmniPlan.app'

  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/OmniPlan.app"
    system 'open', "#{ENV['CUSTOM_CASK_DIR']}/Office, Productivity & Planning/OmniPlan/"
    suppress_move_to_applications :key => 'suppressMoveToApplications'
  end
  
  caveats <<-EOS.undent
    DO MORE...
  EOS
end
