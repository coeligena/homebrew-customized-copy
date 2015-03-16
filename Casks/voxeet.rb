cask :v1 => 'voxeet' do
  version '3.6.0'
  sha256 '5ea1ffa90e0e1614a8a006b0782eddac8512c9775a7762c915e5d7cd5725aab5'

  url "http://download.voxeet.com/download/#{version}/Voxeet_#{version}.dmg"
  name 'Voxeet'
  homepage 'https://www.voxeet.com/'
  license :gratis

  app 'Voxeet.app'
end
