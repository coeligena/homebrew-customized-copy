cask 'entropy' do
  version :latest
  sha256 :no_check

  homepage '1.6.0'
  url "http://localhost:8000/Internet%2C%20Networking%20%26%20Basic%20Tools/Entropy/Entropy-#{homepage}.zip"
  appcast 'http://hyperion.eigenlogik.com/appcast/feed/entropy/',
          :sha256 => '27177d5fa935d8cf5058c1d372557071e18c79496e9015b171c360743f628b95'
  name 'Entropy'
  #homepage 'http://www.eigenlogik.com/entropy/'
  license :commercial

  app 'Entropy.app'
  
  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Entropy.app"
    system 'open', "#{ENV['CUSTOM_CASK_DIR']}/Internet, Networking & Basic Tools/Entropy/"
  end
  
  caveats <<-EOS.undent
    DO MORE...
  EOS
end
