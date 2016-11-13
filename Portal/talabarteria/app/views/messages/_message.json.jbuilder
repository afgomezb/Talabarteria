json.extract! message, :id, :name, :email, :menssage, :created_at, :updated_at
json.url message_url(message, format: :json)