cask :v1 => 'instacast' do
  version '2.0-2663'
  sha256 '643b36ea009e05e3881dc80899c7378a3fdcb23efc9c7fcdf98e5dc22b039776'

  url "http://assets.vemedio.com/software/instacast/Instacast-#{version}.dmg"
  homepage 'http://vemedio.com/products/instacast-mac'
  license :commercial

  app 'Instacast.app'

  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Instacast.app"
    system 'open', "#{ENV['CUSTOM_CASK_DIR']}/Internet, Networking & Basic Tools/Instacast/"
    suppress_move_to_applications :key => 'suppressMoveToApplications'
  end
  
  caveats <<-EOS.undent
    DO MORE...
  EOS
end
