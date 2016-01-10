cask 'daisydisk' do
  homepage '3.0.3.1'

  if MacOS.release == :snow_leopard
    version '2.1.2'
    sha256 'd0a606dee19e524d6fa7b79fd48b3b9865123ca4126fb8805f8e96c317b57b31'
    url "https://www.daisydiskapp.com/downloads/DaisyDisk_#{version}.dmg"
  else
    version :latest
    sha256 :no_check
    url "http://localhost:8000/Cleaners%20%26%20Maintenance/DaisyDisk/DaisyDisk%20#{homepage}.zip"
  end

  appcast 'https://www.daisydiskapp.com/downloads/appcastFeed.php',
          :sha256 => '622ac0e225a09a7a40476f014aa9ea53adc483546d73e942729d86b2c9cc0907'
  name 'DaisyDisk'
  #homepage 'https://www.daisydiskapp.com'
  license :freemium

  depends_on :macos => '>= :snow_leopard'

  app 'DaisyDisk.app'

  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/DaisyDisk.app"
    system 'open', "#{ENV['CUSTOM_CASK_DIR']}/Cleaners & Maintenance/DaisyDisk/"
    suppress_move_to_applications
  end

  caveats <<-EOS.undent
    DO MORE...
  EOS
end
