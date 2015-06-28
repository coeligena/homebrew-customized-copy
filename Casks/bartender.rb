cask :v1 => 'bartender' do
  version :latest
  sha256 :no_check

  homepage '1.2.37'
  url "http://macbartender.com/updates/#{version.gsub('.', '-')}/Bartender.zip",
      :referer => 'http://www.macbartender.com'
  name 'Bartender'
  appcast 'http://www.macbartender.com/updates/Appcast.xml',
          :sha256 => 'cb01076d5f91bf81f8b3074c5bc205f74b55e81ee880b756a2898057a2ffc953'
  license :commercial

  app 'Bartender.app'
  
  container :nested => 'Bartender.zip'

  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Bartender.app"
    system 'open', "#{ENV['CUSTOM_CASK_DIR']}/Tools & Utilities/Bartender/"
    suppress_move_to_applications
  end

  zap :delete => [
                  '/Library/ScriptingAdditions/BartenderHelper.osax',
                  '~/Library/Preferences/com.surteesstudios.Bartender.plist'
  ]

  caveats <<-EOS.undent
    DO MORE...
  EOS
end
