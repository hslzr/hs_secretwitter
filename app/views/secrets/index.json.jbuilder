json.array!(@secrets) do |secret|
  json.extract! secret, :id, :title, :text, :tags
  json.url secret_url(secret, format: :json)
end
