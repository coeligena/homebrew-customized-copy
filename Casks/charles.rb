cask :v1 => 'charles' do
<<<<<<< HEAD
  version :latest
  sha256 :no_check
  
  homepage '3.9.2'
  url "http://localhost:8000/Development/Charles%20Proxy/charles-proxy-#{homepage}-openjdk.dmg"
=======
  version '3.10'
  sha256 'ee0a07d6b303a778f98dd37293aa13bce2adf0ad15648e144c1676c21cec3c31'

  url "http://www.charlesproxy.com/assets/release/#{version}/charles-proxy-#{version}-applejava.dmg"
  name 'Charles'
  homepage 'http://www.charlesproxy.com/'
>>>>>>> c6440d1cdaded24f38c69500abe67e5b42e61746
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Charles.app'

  zap :delete => [
                  '~/Library/Application Support/Charles',
                  '~/Library/Preferences/com.xk72.charles.config',
                 ]
  
  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Charles.app"
    system 'open', "#{ENV['CUSTOM_CASK_DIR']}/Development/Charles Proxy/"
  end

  caveats <<-EOS.undent
    DO MORE...
  EOS
end
