cask :v1 => 'screenfloat' do
  version :latest
  sha256 :no_check

  homepage '1.5.11'
  url "http://localhost:8000/Tools%20%26%20Utilities/ScreenFloat/ScreenFloat_v#{homepage}.dmg"
  name 'ScreenFloat'
  license :commercial

  app 'ScreenFloat.app'
  
  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/ScreenFloat.app"
  end
end
