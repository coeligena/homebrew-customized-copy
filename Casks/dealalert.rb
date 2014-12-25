cask :v1 => 'dealalert' do
  version :latest
  sha256 :no_check

  url 'http://cl.ly/3G0n0R1t330U/download/DealAlert.app.zip'
  appcast 'http://www.littlefin.com/downloads/dealalert.xml'
  homepage 'http://dealalertapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'DealAlert.app'
end
