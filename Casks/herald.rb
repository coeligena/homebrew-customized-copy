cask :v1 => 'herald' do
  version '5.0.1'
  sha256 ''

  url "http://erikhinterbichler.com/blog/wp-content/uploads/software/Herald.zip?v=#{version}"
  homepage 'http://erikhinterbichler.com/apps/herald/'
  license :gratis

  installer :manual => 'Herald Installer.app'
end
