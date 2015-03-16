cask :v1 => 'statsbar' do
  version :latest
  sha256 :no_check

  url 'https://paddle.s3.amazonaws.com/fulfillment_downloads/2488/495669/StatsBar.zip'
  name 'StatsBar'
  homepage 'https://fiplab.com/apps/statsbar-for-mac'
  license :commercial

  app 'StatsBar.app'
end
