cask :v1 => 'anaconda-python3' do
  version '2.3.0'
  sha256 '6a0c94a49f41f9fda0138c8e966bd7b0a8965d6648fd21ffbd645d1453848ba5'

  url "https://repo.continuum.io/archive/Anaconda3-#{version}-MacOSX-x86_64.sh"
  name 'Anaconda'
  homepage 'https://store.continuum.io/cshop/anaconda/'
  license :gratis
  tags :vendor => 'Continuum Analytics'

  container :type => :naked

  preflight do
    system '/bin/chmod', '--', '755', "#{staged_path}/Anaconda3-#{version}-MacOSX-x86_64.sh"
  end

  installer :script => "Anaconda3-#{version}-MacOSX-x86_64.sh",
            :args => [ '-b' ],
            :sudo => false

  uninstall :delete => '~/anaconda'

  caveats do
    path_environment_variable '~/anaconda/bin'
  end

  depends_on :macos => '>= :lion'
end
