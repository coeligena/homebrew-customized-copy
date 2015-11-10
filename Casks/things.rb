cask :v1 => 'things' do
  version :latest
  sha256 :no_check

  homepage '2.5.3'
  url "http://localhost:8000/Office%2C%20Productivity%20%26%20Planning/Things/Things_#{version}.zip"
  appcast 'https://downloads.culturedcode.com/things/download/Things_Updates.php'
  name 'Things'
  #homepage 'https://culturedcode.com/things/'
  license :commercial

  app 'Things.app'

  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Things.app"
    system 'open', "#{ENV['CUSTOM_CASK_DIR']}/Office, Productivity & Planning/Things/"
  end
  
  caveats <<-EOS.undent
    DO MORE...
  EOS
end
