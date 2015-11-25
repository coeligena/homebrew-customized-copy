cask :v1 => 'vipriser' do
  version :latest
  sha256 :no_check

  url 'https://dl.dropboxusercontent.com/u/7614970/VipRiser.zip'
  name 'VipRiser'
  homepage 'https://onflapp.wordpress.com/vipriser/'
  license :unknown

  app 'VipRiser.app'
end
