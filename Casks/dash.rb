cask :v1 => 'dash' do
  version :latest
  sha256 :no_check

  homepage '2.2.3'
  url "http://localhost:8000/Development/Dash/Dash.#{homepage}.zip"
  appcast 'https://kapeli.com/Dash.xml'
  name 'Dash'
  license :commercial

  app 'Dash.app', :target => 'Dashed.app'

  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Dashed.app"
    suppress_move_to_applications
  end

  zap :delete => [
                  '~/Library/Application Support/Dash',
                  '~/Library/Preferences/com.kapeli.dash.plist',
                 ]
end
