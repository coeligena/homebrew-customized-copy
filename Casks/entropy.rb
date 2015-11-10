cask :v1 => 'entropy' do
  version :latest
  sha256 :no_check

  homepage '1.6.0'
  url "http://localhost:8000/Internet%2C%20Networking%20%26%20Basic%20Tools/Entropy/Entropy-#{homepage}.zip"
  name 'Entropy'
  appcast 'http://hyperion.eigenlogik.com/appcast/feed/entropy/'
  #homepage 'http://www.eigenlogik.com/entropy/'
  license :commercial

  app 'Entropy.app'
  
  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Entropy.app"
    system 'open', "#{ENV['CUSTOM_CASK_DIR']}/Internet, Networking & Basic Tools/Entropy/"
  end
  
  caveats <<-EOS.undent
    DO MORE...
  EOS
end
