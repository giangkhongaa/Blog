json.extract! status, :id, :title, :post, :created_at, :updated_at
json.url status_url(status, format: :json)
