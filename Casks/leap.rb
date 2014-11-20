cask :v1 => 'leap' do
  version :latest
  sha256 :no_check

  url 'http://www.ironicsoftware.com/downloads/Leap.zip'
  homepage 'http://www.ironicsoftware.com/leap/'
  license :trial

  app 'Leap.app'
end
