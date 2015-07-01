json.array!(@directories) do |directory|
  json.extract! directory, :id, :number, :name
  json.url directory_url(directory, format: :json)
end
