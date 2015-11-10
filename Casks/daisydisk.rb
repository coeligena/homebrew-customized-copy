cask :v1 => 'daisydisk' do
  homepage '3.0.3.1'

  if MacOS.release == :snow_leopard
    version '2.1.2'
    sha256 'd0a606dee19e524d6fa7b79fd48b3b9865123ca4126fb8805f8e96c317b57b31'
    url "http://www.daisydiskapp.com/downloads/DaisyDisk_#{version}.dmg"
  else
    version :latest
    sha256 :no_check
    url "http://localhost:8000/Cleaners%20%26%20Maintenance/DaisyDisk/DaisyDisk%20#{homepage}.zip"
  end

  appcast 'http://www.daisydiskapp.com/downloads/appcastFeed.php'
  name 'DaisyDisk'
  #homepage 'http://www.daisydiskapp.com'
  license :freemium

  app 'DaisyDisk.app'

  depends_on :macos => '>= :snow_leopard'
  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/DaisyDisk.app"
    system 'open', "#{ENV['CUSTOM_CASK_DIR']}/Cleaners & Maintenance/DaisyDisk/"
    suppress_move_to_applications
  end

  caveats <<-EOS.undent
    DO MORE...
  EOS
end
