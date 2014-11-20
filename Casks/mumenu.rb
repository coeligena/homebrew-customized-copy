cask :v1 => 'mumenu' do
  version '2.1.4'
  sha256 '13ca544a54af06d8143185fd72d65f168604950bb0ca915e28224c6d78c45685'

  url 'https://www.macupdate.com/download/8277/MUMenu#{version}.zip'
  homepage 'https://www.macupdate.com/app/mac/8277/mumenu'
  license :gratis

  app 'MUMenu.app'
end
