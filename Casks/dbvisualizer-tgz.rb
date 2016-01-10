cask 'dbvisualizer-tgz' do
  version '9.2.10'
  sha256 '907f2b89639147986bb3c8b568defc514c762420cae6633bb358dc6cb1925c41'

  url "http://www.dbvis.com/product_download/dbvis-#{version}/media/dbvis_macos_#{version.gsub('.', '_')}.tgz"
  homepage 'http://www.dbvis.com/'
  license :commercial

  app 'DbVisualizer.app'
end
