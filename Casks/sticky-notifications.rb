cask 'sticky-notifications' do
  version '1.0.5'
  sha256 '6758b6c431990b5a72d66650d9323a31c51e9063a0e1cc2f317ce52adc8f0fe9'

  url "http://sticky-notifications.s3-eu-west-1.amazonaws.com/sticky_notifications_#{version}.zip"
  name 'Sticky Notifications'
  homepage 'http://instinctivecode.com/sticky-notifications/'
  license :commercial

  app 'Sticky Notifications.app'
  
  postflight do
    suppress_move_to_applications :key => 'suppressMoveToApplications'
  end
end