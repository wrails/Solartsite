class CreateFormMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :form_messages do |t|
      t.string :name
      t.string :email
      t.string :company
      t.string :subject
      t.string :phone
      t.text :body

      t.timestamps
    end
  end
end
