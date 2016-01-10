cask 'devonthink-personal' do
    version '2.8.4'
    sha256 'd17884f211aa4129dcf95c75f1c5f306ff405fda560dad0af991880b96edccbd'

    url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Personal.app.zip"
    appcast 'http://www.devon-technologies.com/Sparkle/DEVONthink2.xml',
            :sha256 => '5166d03885dc47d5d4fe1aadd1f782d346fcc7a5f04a855657490b05d2559c92'
    homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-personal.html'
    license :commercial
    
    container :nested => 'DEVONthink_Personal.dmg'

    app 'DEVONthink.app'
end
