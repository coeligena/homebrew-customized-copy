cask :v1 => 'intermission' do
  version :latest
  sha256 :no_check

  homepage '1.1.2'
  url "http://localhost:8000/Media%20Players%20%26%20Tools/Intermission%20Rewind%20Audio/Intermission-#{homepage}.dmg"
  name 'Intermission'
  #homepage 'https://rogueamoeba.com/intermission/'
  license :commercial

  app 'Intermission.app'
  
  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Intermission.app"
    system 'open', "#{ENV['CUSTOM_CASK_DIR']}/Media Players & Tools/Intermission Rewind Audio/"
  end
  
  caveats <<-EOS.undent
    DO MORE...
  EOS
end
