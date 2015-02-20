cask :v1 => 'growlvoice' do
  version :latest
  sha256 :no_check

  homepage '2.0'
  url "http://localhost:8000/Internet%2C%20Networking%20%26%20Basic%20Tools/GrowlVoice/GrowlVoice-#{homepage}.dmg"
  name 'GrowlVoice'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'GrowlVoice.app'
  
  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/GrowlVoice.app"
  end
end
