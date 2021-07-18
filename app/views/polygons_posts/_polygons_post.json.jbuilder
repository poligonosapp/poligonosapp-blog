json.extract! polygons_post, :id, :title, :body, :created_at, :updated_at
json.url polygons_post_url(polygons_post, format: :json)
