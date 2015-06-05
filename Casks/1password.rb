cask :v1 => '1password' do

  if MacOS.release <= :lion
    version '3.8.22'
    sha256 '3afd75f1bddf791dc7dbc9a7d92ab6eb91ee891407d750cedb7b5aff5fe8bf17'

    url "http://i.agilebits.com/dist/1P/mac/1Password-#{version}.zip"

    app '1Password.app'
  elsif MacOS.release <= :mavericks
    version '4.4.3'
    sha256 '6657fc9192b67dde63fa9f67b344dc3bc6b7ff3e501d3dbe0f5712a41d8ee428'

    url "http://i.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"

    app "1Password #{version.to_i}.app"
  else
    homepage '5.1_(510027)'
    url "http://localhost:8000/Security/1Password/1Password%20#{homepage}.dmg"
    version '5.3.2'
    sha256 '6051434c77ad48af7b11f2259a91b12ded21ce3357c8db4780718ce83f44b668'

    #url "http://i.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"

    app "1Password #{version.to_i}.app"
  end

  name '1Password'
  #homepage 'https://agilebits.com/onepassword'
  license :commercial

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
