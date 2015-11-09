cask :v1 => 'sublime-text3' do
  version :latest
  sha256 :no_check
  
  homepage '3095'
  url "http://localhost:8000/Development/Sublime%20Text/Build%203k/Sublime%20Text%20Build%20#{homepage}.dmg"
  appcast 'http://www.sublimetext.com/updates/3/stable/appcast_osx.xml',
          :sha256 => 'bb8df68fe6a87966c4662948f4f147ac5dd0d1cd3a8d5342c56a11a018ff81e9'
  license :closed

  app 'Sublime Text.app'
  binary 'Sublime Text.app/Contents/SharedSupport/bin/subl'
  caveats do
    files_in_usr_local
  end

  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Sublime Text.app"
    system 'open', "#{ENV['CUSTOM_CASK_DIR']}/Development/Sublime Text/Build 3k/"
  end
  
  caveats <<-EOS.undent
    DO MORE...
  EOS
end
