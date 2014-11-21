cask :v1 => 'subliminal' do
  version :latest
  sha256 :no_check

  url 'https://s3.amazonaws.com/subliminalapp/subliminal.zip'
  homepage 'http://www.smartcodehq.com/subliminal/'
  license :trial

  app 'Subliminal.app'
end
