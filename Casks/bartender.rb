cask :v1 => 'bartender' do
  version :latest
  sha256 :no_check

  homepage '1.2.32'
  url "http://localhost:8000/Tools%20%26%20Utilities/Bartender/Bartender-#{homepage}.zip"
  name 'Bartender'
  appcast 'http://www.macbartender.com/updates/updates.php'
  license :commercial

  app 'Bartender.app'

  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Bartender.app"
    system 'open', "#{ENV['CUSTOM_CASK_DIR']}/Tools & Utilities/Bartender/"
    suppress_move_to_applications
  end

  zap :delete => '~/Library/Preferences/com.surteesstudios.Bartender.plist'
  
  caveats <<-EOS.undent
    DO MORE...
  EOS
end
