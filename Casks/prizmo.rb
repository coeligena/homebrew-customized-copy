cask :v1 => 'prizmo' do
  version '3'
  sha256 '309ee4e6d19ad8bfb03dd990909d82515e08b778bb3ac09c2736254fb8259bf4'
  
  url 'http://www.creaceed.com/downloads/prizmo3.zip'
  appcast 'http://www.creaceed.com/appcasts/prizmo3.xml'
  homepage 'http://www.creaceed.com/prizmo'
<<<<<<< HEAD
  license :trial
  
=======
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

>>>>>>> caskroom/homebrew-cask/master
  app 'Prizmo.app'
end
