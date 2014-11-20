cask :v1 => 'devonthink-personal' do
    version '2.8.1'
    sha256 'e1831060b011826670713e837cd557038dba308cb8b02a15e272adc713fa03c0'

    url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Personal.app.zip"
    appcast 'http://www.devon-technologies.com/Sparkle/DEVONthink2.xml',
            :sha256 => '5166d03885dc47d5d4fe1aadd1f782d346fcc7a5f04a855657490b05d2559c92'
    homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-personal.html'
    license :trial

    app 'DEVONthink.app'
end
