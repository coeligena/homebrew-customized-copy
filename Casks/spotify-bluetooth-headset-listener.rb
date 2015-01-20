cask :v1 => 'spotify-bluetooth-headset-listener' do
  version :latest
  sha256 :no_check

  url "https://s3-us-west-2.amazonaws.com/jguice/mac-bt-headset-fix/Spotify+Bluetooth+Headset+Listener.zip"
  homepage 'https://github.com/jguice/mac-bt-headset-fix'
  license :oss

  app 'Spotify Bluetooth Headset Listener.app'
end
