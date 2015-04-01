cask :v1 => 'fantastical' do
<<<<<<< HEAD
  version :latest
  sha256 :no_check

  url "https://flexibits.com/fantastical/download"
  appcast 'https://flexibits.com/fantastical/appcast.php',
          :sha256 => '3d789ff8dd91c8ebc1b63d2811ec17e0a950433b03605d8c10eef010733cf79a'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder
=======
  version '2.0'
  sha256 '002cac160c3d1dc4a0ecccdc8215ba0b7a4cffd7ec2aff3b61bba8598d09bf95'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast2.php',
          :sha256 => '25b925b46633c66b6d10dda0f213614da63da9c80a231dc39c8ffb86e8b883e4'
  name 'Fantastical'
  homepage 'http://flexibits.com/fantastical'
  license :freemium
>>>>>>> c6440d1cdaded24f38c69500abe67e5b42e61746

  app 'Fantastical 2.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => '~/Library/Preferences/com.flexibits.fantastical.plist'
end
