cask :v1 => 'orange' do
  version '2.7.8-249a5a5'
  sha256 '041cb4ef4daf5f5255aec4816c3b8bb9651bb3f4be64098e7db78d2b06018ab0'

  url "http://orange.biolab.si/download/files/Orange-#{version}.dmg"
  homepage 'http://orange.biolab.si/'
  license :gpl

  app 'Orange.app'
end
