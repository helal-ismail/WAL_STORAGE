require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "shared_moment_notification" do
    mail = UserMailer.shared_moment_notification
    assert_equal "Shared moment notification", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
