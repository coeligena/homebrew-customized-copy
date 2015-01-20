cask :v1 => 'fish-shell' do
    version '2.1.1'
    sha256 :no_check
    
    url 'http://fishshell.com/files/2.1.1/fish.app.zip'
    homepage 'http://fishshell.com'
    license :oss
    
    app 'fish.app', :target => 'Fish.app'
end
