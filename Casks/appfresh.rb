cask :v1 => 'appfresh' do
  version :latest
  sha256 :no_check

  url 'http://localhost:8000/Internet%2C%20Networking%20%26%20Basic%20Tools/AppFresh/AppFresh105.dmg'
  name 'AppFresh'
  appcast 'http://backend.metaquark.de/appcast/appfresh.xml'
  homepage 'http://metaquark.de/appfresh/mac'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'appfresh.app'

  postflight do
    system 'tag', '-a', "Purple", "#{staged_path}/AppFresh.app"
    system 'open', "#{ENV['CUSTOM_CASK_DIR']}/Internet, Networking & Basic Tools/AppFresh/"
  end
  
  caveats <<-EOS.undent
    DO MORE...
  EOS
end
