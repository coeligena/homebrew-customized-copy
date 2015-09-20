cask :v1 => 'papers' do
  version :latest
  sha256 :no_check

  homepage '3.2.7'
  url "http://localhost:8000/Education%2C%20Scientific%20%26%20Academic/Mekentosj%20Papers/Papers-#{homepage}.zip"
  appcast 'http://appcaster.papersapp.com/apps/mac/production/appcast.xml',
          :sha256 => '0b58ec3ddcf8f5080a8d6e149e92a1c273e668bd4e04f7f865d4aaa6a347370a'
  name 'Papers'
  license :commercial

  app 'Papers.app'
  
  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Papers.app"
  end
end
