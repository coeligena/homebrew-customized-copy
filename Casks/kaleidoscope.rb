cask :v1 => 'kaleidoscope' do
  version :latest
  sha256 :no_check
  
  homepage '2.1.0'
  url "http://localhost:8000/Development/Kaleidoscope/Kaleidoscope%20#{homepage}.zip"
  appcast 'https://updates.blackpixel.com/updates?app=ks',
          :sha256 => '0c1806533b06d08715959141f202ccf2bc30a12637dd71eef70c2552b6f18b09'
  name 'Kaleidoscope'
  #homepage 'http://www.kaleidoscopeapp.com/'
  license :commercial

  app 'Kaleidoscope.app'
#  binary 'Kaleidoscope.app/Contents/Resources/bin/ksdiff'

  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/Kaleidoscope.app"
    suppress_move_to_applications
  end

  caveats do
#    files_in_usr_local
  end

  zap :delete => [
                  '~/Library/Application Support/Kaleidoscope',
                  '~/Library/Caches/com.blackpixel.kaleidoscope',
                  '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.blackpixel.kaleidoscope',
                  '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.blackpixel.kaleidoscope/queued_reports',
                  '~/Library/Preferences/com.blackpixel.kaleidoscope.plist',
                  '~/Library/Saved Application State/com.blackpixel.kaleidoscope.savedState',
                 ]
end
