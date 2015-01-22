cask :v1 => 'undercover' do
  version '6.0.1'
  sha256 '947cf217ef5ef4e1f7bd8b842658b2f15546327b0100fa1e85d69dc83594bd0a'

  url "http://assets.undercoverhq.com/client/#{version}/undercover_mac.pkg"
  homepage 'http://orbicule.com/undercover/mac/index.php'
  # changelog - https://www.undercoverhq.com/changes
  license :commercial

  pkg "undercover_mac.pkg"

  uninstall :pkgutil => [
                          'com.orbicule.uc',
                          'com.orbicule.UCAgent'
                        ]
end
