cask :v1 => 'voila' do
  version :latest
  sha256 :no_check

  url 'http://www.globaldelight.com/voila/downloads/voila.dmg'
  homepage 'http://www.globaldelight.com/voila/'
  license :trial

  installer :manual => 'Voila.app'
end
