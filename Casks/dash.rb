cask :v1 => 'dash' do
  version :latest
  sha256 :no_check

  url 'http://kapeli.com/Dash.zip'
  appcast 'http://kapeli.com/Dash.xml'
  name 'Dash'
  homepage 'http://kapeli.com/dash'
  license :commercial

  app 'Dash.app', :target => 'Dashed.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => [
                  '~/Library/Application Support/Dash/library.dash',
                  '~/Library/Preferences/com.kapeli.dash.plist',
                 ]
end
