cask :v1 => 'switchup' do
  version :latest
  sha256 :no_check

  homepage '1.6.3'
  url "http://localhost:8000/Tools%20%26%20Utilities/SwitchUp/SwitchUp-#{homepage}.zip"
  appcast 'http://www.irradiatedsoftware.com/updates/profiles/switchup.php',
          :sha256 => 'a9feeb5f7dcb832042ad2d8083844e6f26c0537628820870b27e1d8a8d5abb82'
  name 'SwitchUp'
  #homepage 'https://www.irradiatedsoftware.com/switchup/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SwitchUp.app'
  
  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/SwitchUp.app"
  end
  
  caveats <<-EOS.undent
    DO MORE...
  EOS
end
