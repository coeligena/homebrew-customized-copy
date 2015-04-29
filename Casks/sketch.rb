cask :v1 => 'sketch' do
  version :latest
  sha256 :no_check

  homepage '3.2.2'
  url "http://localhost:8000/Design%2C%20Photo%20%26%20Video%20Tools%20%26%20Editors/Sketch/Sketch-#{homepage}.dmg"
  appcast 'http://www.bohemiancoding.com/sketch/appcast.xml'
  name 'Sketch'
  homepage 'http://www.bohemiancoding.com/sketch/'
  license :commercial

  app 'Sketch.app'
  
  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Sketch.app"
    system 'open', "#{ENV['CUSTOM_CASK_DIR']}/Design, Photo & Video Tools & Editors/Sketch/"
  end
  
  caveats <<-EOS.undent
    DO MORE...
  EOS
end
