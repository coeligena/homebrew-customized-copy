cask :v1 => 'herald' do
  version '5.0.1'
  sha256 'fc6dc1e978e7a6b5529254c16231e442e9f3790d53e0b0ceaacdb0bad124ed8a'

  url "http://erikhinterbichler.com/blog/wp-content/uploads/software/Herald.zip?v=#{version}"
  homepage 'http://erikhinterbichler.com/apps/herald/'
  license :gratis

  installer :manual => 'Herald Installer.app'
end
