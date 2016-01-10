cask 'notify' do
  version '2.1.6'
  sha256 'cc11cedeeaedd15619dd6b89777fc48c9da4d6ad7fd9f9e541d258739a9a3f6f'

  url "http://localhost:8000/Internet%2C%20Networking%20%26%20Basic%20Tools/Notify/notify-#{version}.zip"
  name 'Notify'
  license :gratis

  app 'Notify.app'
  
  postflight do
    system 'open', "#{ENV['CUSTOM_CASK_DIR']}/Internet, Networking & Basic Tools/Notify/"
  end
  
  caveats <<-EOS.undent
    DO MORE...
  EOS
end
