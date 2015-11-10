cask :v1 => 'path-finder' do
  version :latest
  sha256 :no_check

  homepage '7.1.2'
  url "http://localhost:8000/Tools%20%26%20Utilities/Path%20Finder/Path%20Finder%20#{homepage}.dmg"
  name 'Path Finder'
  #homepage 'http://www.cocoatech.com/pathfinder/'
  license :commercial

  app 'Path Finder.app'

  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Path Finder.app"
    system 'open', "#{ENV['CUSTOM_CASK_DIR']}/Tools & Utilities/Path Finder/"
    suppress_move_to_applications :key => 'kNTMoveToApplicationsFolderAlertSuppress'
  end

  zap :delete => [
                  '~/Library/Preferences/com.cocoatech.PathFinder.plist',
                  '~/Library/Application Support/Path Finder',
                 ]
end
