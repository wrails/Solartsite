require 'test_helper'

class FormMessagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @form_message = form_messages(:one)
  end

  test "should get index" do
    get form_messages_url
    assert_response :success
  end

  test "should get new" do
    get new_form_message_url
    assert_response :success
  end

  test "should create form_message" do
    assert_difference('FormMessage.count') do
      post form_messages_url, params: { form_message: { body: @form_message.body, company: @form_message.company, email: @form_message.email, name: @form_message.name, phone: @form_message.phone, subject: @form_message.subject } }
    end

    assert_redirected_to form_message_url(FormMessage.last)
  end

  test "should show form_message" do
    get form_message_url(@form_message)
    assert_response :success
  end

  test "should get edit" do
    get edit_form_message_url(@form_message)
    assert_response :success
  end

  test "should update form_message" do
    patch form_message_url(@form_message), params: { form_message: { body: @form_message.body, company: @form_message.company, email: @form_message.email, name: @form_message.name, phone: @form_message.phone, subject: @form_message.subject } }
    assert_redirected_to form_message_url(@form_message)
  end

  test "should destroy form_message" do
    assert_difference('FormMessage.count', -1) do
      delete form_message_url(@form_message)
    end

    assert_redirected_to form_messages_url
  end
end
