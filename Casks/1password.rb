cask :v1 => '1password' do
  version :latest
  sha256 :no_check

  homepage '5.1_(510027)'
  url "http://localhost:8000/Security/1Password/1Password%20#{homepage}.dmg"
  name '1Password'
  license :commercial

  app "1Password #{version.to_i}.app"

  postflight do
    system 'tag', '-a', 'Purple', "#{staged_path}/1Password.app"
  end

  zap :delete => [
                  '~/Library/Application Scripts/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
                  '~/Library/Containers/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
                  '~/Library/Containers/com.agilebits.onepassword-osx',
                  '~/Library/Group Containers/2BUA8C4S2C.com.agilebits',
                 ]
end
