cask :v1 => 'papers' do
  version :latest
  sha256 :no_check

  homepage '3.2.7'
  url "http://localhost:8000/Education%2C%20Scientific%20%26%20Academic/Mekentosj%20Papers/Papers-#{homepage}.zip"
  appcast 'http://appcaster.papersapp.com/apps/mac/production/appcast.xml',
          :sha256 => '4383f5d86a31d7d1068e687f65492c8438985f09717b896a5db87cdeb1f75f0b'
  name 'Papers'
  license :commercial

  app 'Papers.app'
  
  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Papers.app"
  end
end
