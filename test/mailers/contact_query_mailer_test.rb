require 'test_helper'

class ContactQueryMailerTest < ActionMailer::TestCase
  test "new_contact_query" do
    mail = ContactQueryMailer.new_contact_query
    assert_equal "New contact query", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
