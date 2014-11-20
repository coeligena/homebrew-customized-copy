cask :v1 => 'skedit' do
  version '4.1.13'
  sha256 '934204eb8d507a26c5db8529208288d4343e0ca0c71a78d1547992dc27f1b57e'

  url "http://downloads.beforedawnsolutions.com/skedit/skEdit_v#{version.gsub('.','')}.dmg"
  homepage 'http://beforedawnsolutions.com/skedit/'
  license :trial

  app 'skEdit.app'
end
