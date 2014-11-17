cask :v1 => 'istopmotion' do
  version '3.6-15980'
  sha256 '403f912d218da3868718cb1435bcd9919bfffbe587f37efca5182ef3a2770c62'

  url "https://cdn.boinx.com/software/istopmotion/Boinx_iStopMotion_#{version}.app.zip"
  homepage 'http://www.boinx.com/istopmotion/mac/'
  license :trial

  app 'iStopMotion.app'
end
