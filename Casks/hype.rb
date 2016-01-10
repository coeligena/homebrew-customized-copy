cask 'hype' do
  version :latest
  sha256 :no_check

  url "https://tumult.com/hype/download/Hype.zip"
  appcast 'https://tumult.com/hype/appcast_hype2.xml',
          :sha256 => '07aef09835937ee8af2d7938f30d9871faa6f935b36bc93850e021e32ebf6717'
  name 'Tumult Hype'
  homepage 'https://tumult.com/hype/'
  license :commercial

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/15762
  app "Hype2.app", :target => 'Hype 3.app'
end
