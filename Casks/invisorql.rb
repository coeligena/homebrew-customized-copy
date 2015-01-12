cask :v1 => 'invisorql' do
  version :latest
  sha256 :no_check

  url 'http://www.pozdeev.com/invisor/download/InvisorQL-2.0.dmg'
  name 'Invisor QuickLook Plug-In'
  homepage 'http://www.pozdeev.com/invisor/'
  license :gratis

  qlplugin 'InvisorQL.qlgenerator'
end
