cask 'herald' do
  version :latest
  sha256 :no_check

  url "http://erikhinterbichler.com/blog/wp-content/uploads/software/Herald.zip"
  homepage 'http://erikhinterbichler.com/apps/herald/'
  license :gratis

  installer :manual => 'Herald Installer.app'
end
