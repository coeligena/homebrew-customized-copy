cask :v1 => 'fantastical' do
  version :latest
  sha256 :no_check

  url "https://flexibits.com/fantastical/download"
  appcast 'https://flexibits.com/fantastical/appcast.php',
  sha256 '398c3189f1bb08c44a968559b1f7d4c4bda33c15f3b095904e999e2d37b33ea1'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast2.php',
          :sha256 => '25b925b46633c66b6d10dda0f213614da63da9c80a231dc39c8ffb86e8b883e4'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'
  license :freemium

  app 'Fantastical 2.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => '~/Library/Preferences/com.flexibits.fantastical.plist'
end
