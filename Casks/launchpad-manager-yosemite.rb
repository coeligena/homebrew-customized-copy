cask :v1 => 'launchpad-manager-yosemite' do
  version :latest
  sha256 :no_check

  homepage '1.0.4'
  url "http://localhost:8000/Tools%20%26%20Utilities/Launchpad%20Manager%20Yosemite/LaunchpadManagerYosemite-#{homepage}.dmg"
  name 'Launchpad Manager'
  license :commercial

  app 'Launchpad Manager Yosemite.app'

  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Launchpad Manager Yosemite.app"
    system 'open', "#{ENV['CUSTOM_CASK_DIR']}/Tools & Utilities/Launchpad Manager Yosemite/"
  end
  
  caveats <<-EOS.undent
    DO MORE...
  EOS
end
