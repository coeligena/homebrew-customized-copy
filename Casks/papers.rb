<<<<<<< HEAD
cask :v1 => 'papers' do
  version :latest
  sha256 :no_check
=======
cask 'papers' do
  version '3.4.1-407'
  sha256 '9a1d3f9d2e6cfc55881ac69882c3b362c89aaa471449fd001a59dceb8730189b'
>>>>>>> 178fd913ed615bea0fddca23b80452f3345a96ca

  homepage '3.2.7'
  url "http://localhost:8000/Education%2C%20Scientific%20%26%20Academic/Mekentosj%20Papers/Papers-#{homepage}.zip"
  appcast 'http://appcaster.papersapp.com/apps/mac/production/appcast.xml',
          :sha256 => '681469fc04bc4690c6af360d9cc4d7af1c03626b9c26e1af105b2f4290114caf'
  name 'Papers'
  #homepage 'http://www.papersapp.com/'
  license :commercial

  app 'Papers.app'
  
  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Papers.app"
  end
end
