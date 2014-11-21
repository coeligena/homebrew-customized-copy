cask :v1 => 'propedit' do
  version '2.1.0'
  sha256 '63c889384be6c5b9705b8a2f91458ee081df3ac7cfac9e45005d02c40980e66e'

  url 'http://www.eosgarden.com/downloads/software/mac/PropEdit-#{version}.dmg'
  homepage 'http://www.eosgarden.com/en/freeware/propedit/overview/'
  license :gratis

  app 'PropEdit.app'
end
