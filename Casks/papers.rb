cask :v1 => 'papers' do
  version :latest
  sha256 :no_check

  homepage '3.2.7'
  url "http://localhost:8000/Education%2C%20Scientific%20%26%20Academic/Mekentosj%20Papers/Papers-#{homepage}.zip"
  appcast 'http://www.papersapp.com/papers/appcast_v3.xml'
  name 'Papers'
  license :commercial

  app 'Papers.app'
  
  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Papers.app"
  end
end
