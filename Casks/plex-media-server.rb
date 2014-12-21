cask :v1 => 'plex-media-server' do
<<<<<<< HEAD
  version '0.9.11.1.678-c48ffd2'
  sha256 '7cd91e89f74569409b12f8151d66c731ca8658e6df61aaaac41accf6e6cba337'
=======
  version '0.9.11.4.739-a4e710f'
  sha256 '69066c232cfbf4b8cd92881e954e8486042c0838bfd69c27b600d89d023abf96'
>>>>>>> caskroom/homebrew-cask/master

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  homepage 'https://plex.tv/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Plex Media Server.app'
end
