json.array!(@emails) do |email|
  json.extract! email, :id, :name, :email, :subject, :body
  json.url email_url(email, format: :json)
end
