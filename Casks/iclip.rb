cask :v1 => 'iclip' do
  version :latest
  sha256 :no_check

  url 'http://www.irradiatedsoftware.com/download/iClip.zip'
  homepage 'http://www.irradiatedsoftware.com/iclip/'
  license :trial

  app 'iClip.app'
end
