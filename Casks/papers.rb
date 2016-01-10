cask 'papers' do
  version :latest
  sha256 :no_check

  homepage '3.4.2,439'
  url "http://localhost:8000/Education%2C%20Scientific%20%26%20Academic/Mekentosj%20Papers/Papers-#{homepage}.zip"
  appcast 'http://appcaster.papersapp.com/apps/mac/production/appcast.xml',
          :sha256 => 'd501c28158ccdb5c258d905e288b83a028ccb1395b4ab06430e1c434944821f6'
  name 'Papers'
  #homepage 'http://www.papersapp.com/'
  license :commercial

  app 'Papers.app'
  
  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Papers.app"
  end
end
