require "test_helper"

class SupportRequestMailerTest < ActionMailer::TestCase
  test "respond" do
    support_request = support_requests(:one)
    mail = SupportRequestMailer.respond(support_request).deliver_now

    assert_emails 1 do
      mail
    end

    assert_equal ["support@example.com"], mail.from
    assert_equal [support_request.email], mail.to
    assert_match /Re: #{support_request.subject}/, mail.subject
    assert_match support_request.message, mail.body.to_s
  end
end
