cask :v1 => 'alarm-clock-pro' do
  version :latest
  sha256 :no_check

  url 'http://www.koingosw.com/downloads/getmirrorfile.php?path=%2Fdownloads%2Fmacintosh%2Falarm_clock_pro.dmg'
  homepage 'http://www.koingosw.com/products/alarmclockpro.php'
  license :trial

  app 'Alarm Clock Pro.app'
end
