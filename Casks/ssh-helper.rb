cask 'ssh-helper' do
  version :latest
  sha256 :no_check

  homepage '1.3'
  url "http://localhost:8000/Internet%2C%20Networking%20%26%20Basic%20Tools/SSH%20Helper/sshhelper#{homepage}.dmg"
  name 'SSH Helper'
  license :gratis

  app 'SSH Helper.app'
end
