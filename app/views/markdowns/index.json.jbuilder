json.array!(@markdowns) do |markdown|
  json.extract! markdown, :id, :title, :content
  json.url markdown_url(markdown, format: :json)
end
