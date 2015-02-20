cask :v1 => 'herald' do
  version '5.0.2'
  sha256 '21f66fa49936b74b46d433720c6e42d872d61797041369e042aa7de1d892fc6f'

  url "http://erikhinterbichler.com/blog/wp-content/uploads/software/Herald.zip?v=#{version}"
  homepage 'http://erikhinterbichler.com/apps/herald/'
  license :gratis

  installer :manual => 'Herald Installer.app'
end
