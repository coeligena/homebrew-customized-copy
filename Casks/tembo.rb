cask 'tembo' do
  version :latest
  sha256 :no_check

  url 'http://houdah.com/tembo/download_assets/Tembo_latest.zip'
  homepage 'http://houdah.com/tembo/'
  license :commercial

  app 'Tembo.app'
end
