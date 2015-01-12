cask :v1 => 'setweblocthumb' do
  version '0.9.9'
  sha256 'cc3ee831090a481d79f6fb2fe297f2f91ae1bdabb9d7488e1ca3d2fa445f4266'
  
  url "http://hasseg.org/setWeblocThumb/#{version}/setWeblocThumb-v#{version}.zip"
  homepage 'http://hasseg.org/setWeblocThumb/'
  license :oss
  
  binary 'setWeblocThumb'
end
