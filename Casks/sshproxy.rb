cask :v1 => 'sshproxy' do
  version :latest
  sha256 :no_check

  homepage '15.07'
  url "http://localhost:8000/Internet%2C%20Networking%20%26%20Basic%20Tools/SSH%20Proxy/SSH%20Proxy%20#{homepage}.dmg"
  name 'SSH Proxy'
  license :commercial

  app 'SSH Proxy.app'

  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/SSH Proxy.app"
  end
end
