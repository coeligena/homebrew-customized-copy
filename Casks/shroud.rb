cask 'shroud' do
  version '1.2'
  sha256 'fb1fc2cad188131714ea3505fa65f20f8d79da758dc86b2dc2ed9073648900af'

  url "http://sabi.net/nriley/software/Shroud-#{version}.dmg"
  name 'Shroud'
  homepage 'http://sabi.net/nriley/software/index.html#shroud'
  license :oss

  app 'Shroud.app'
end
