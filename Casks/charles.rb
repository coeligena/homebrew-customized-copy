cask :v1 => 'charles' do
  version :latest
  sha256 :no_check

  
  homepage '3.9.2'
  url "http://localhost:8000/Development/Charles%20Proxy/charles-proxy-#{homepage}-openjdk.dmg"
  name 'Charles'
  homepage 'http://www.charlesproxy.com/'
  license :commercial

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
