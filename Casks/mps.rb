cask :v1 => 'mps' do
  version '3.1.5'
  sha256 '68dd55b0542ddb82fe941d465f41b035730c77849c6b13b93f07e5d7091bfb8c'

  url "http://download.jetbrains.com/mps/#{version.sub(%r{^(\d+\.\d).*},'\1\2')}/MPS-#{version}-macos.dmg"
  homepage 'https://www.jetbrains.com/mps/'
  license :oss

  app "MPS #{version}.app"

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end

  zap :delete => [
                  "~/Library/Application Support/MPS#{version.sub(%r{^(\d+\.\d).*},'\1\2')}",
                  "~/Library/Preferences/MPS#{version.sub(%r{^(\d+\.\d).*},'\1\2')}",
                  "~/Library/Caches/MPS#{version.sub(%r{^(\d+\.\d).*},'\1\2')}",
                  "~/Library/Logs/MPS#{version.sub(%r{^(\d+\.\d).*},'\1\2')}",
                 ]

  caveats <<-EOS.undent
    #{token} may require Java 7 (an older version), available from the
    caskroom-versions repository via
      brew cask install caskroom/versions/java7
    Alternatively, #{token} can be modified to use Java 8 as described in
      https://github.com/caskroom/homebrew-cask/issues/4500#issuecomment-43955932
  EOS
end
