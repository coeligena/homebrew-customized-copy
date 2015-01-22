cask :v1 => 'fantastical' do
  version :latest
  sha256 :no_check

  url "https://flexibits.com/fantastical/download"
  appcast 'https://flexibits.com/fantastical/appcast.php',
          :sha256 => '3d789ff8dd91c8ebc1b63d2811ec17e0a950433b03605d8c10eef010733cf79a'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Fantastical.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => '~/Library/Preferences/com.flexibits.fantastical.plist'
end
