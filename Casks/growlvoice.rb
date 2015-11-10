cask :v1 => 'growlvoice' do
  version :latest
  sha256 :no_check

  homepage '2.0'
  url "http://localhost:8000/Internet%2C%20Networking%20%26%20Basic%20Tools/GrowlVoice/GrowlVoice-#{homepage}.dmg"
  name 'GrowlVoice'
  appcast 'http://www.growlvoice.com/trials/appcast.xml',
          :sha256 => 'fe1d26972a9184bbe452eba1334f74e22b55fde54975a835c118532e243f7e92'
  #homepage 'http://www.growlvoice.com/'
  license :commercial

  app 'GrowlVoice.app'
  
  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/GrowlVoice.app"
  end
end
