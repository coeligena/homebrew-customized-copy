cask 'duplicatewindows' do
  version '0.3.4'
  sha256 'c0dc5997637fa515ba14c23ac3da51b5ac18d0c6ba0c82722d2f039d4149a357'

  url "http://localhost:8000/Tools%20%26%20Utilities/DuplicateWindows/DuplicateWindows.#{version}.zip"
  name 'Duplicate Windows'
  homepage 'http://www.duplicatewindows.com/'
  license :gratis

  app 'DuplicateWindows.app'
end
