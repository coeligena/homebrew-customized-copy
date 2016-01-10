cask 'quicklookchm' do
  version '1.1'
  sha256 'ed0d675a37038e6e393f556ee4811c9b4dcd66d6ffbceaa74c2d60630372ec5f'

  url "http://sourceforge.net/projects/quickchm/files/quickchm/quickchm#{version}/quickchm_v#{version}_Universal.zip/download"
  homepage 'http://sourceforge.net/projects/quickchm/'
  license :oss

  qlplugin 'quickchm.qlgenerator'
end
