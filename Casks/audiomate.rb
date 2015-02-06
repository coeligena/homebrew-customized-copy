cask :v1 => 'audiomate' do
  version '2.1.4'
  sha256 'a6b9c441a72a51d1e54f3b42d029d81839c3868bc85e0f12fa8b9677e732f14e'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/downloads.troikalabs.com/audiomate/#{version}/74/AudioMate-v#{version}.dmg"
  name 'AudioMate'
  homepage 'http://audiomateapp.com/'
  license :mit

  app 'AudioMate.app'

  postflight do
    suppress_move_to_applications :key => 'suppressMoveToApplications'
  end
end
