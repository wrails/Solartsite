class AddUserToFormMessages < ActiveRecord::Migration[5.1]
  def change
    add_reference :form_messages, :user, foreign_key: true
  end
end
