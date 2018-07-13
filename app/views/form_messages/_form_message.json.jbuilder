json.extract! form_message, :id, :name, :email, :company, :subject, :phone, :body, :created_at, :updated_at
json.url form_message_url(form_message, format: :json)
