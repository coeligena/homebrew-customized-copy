cask :v1 => 'xbox360-controller-driver' do
  version :latest
  sha256 :no_check

  url 'http://files.tattiebogle.net/360/360ControllerInstall.dmg'
  homepage 'http://tattiebogle.net/index.php/ProjectRoot/Xbox360Controller/OsxDriver'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Install360Controller.pkg'

  uninstall :pkgutil => 'com.mice.pkg.Xbox360controller'
end
