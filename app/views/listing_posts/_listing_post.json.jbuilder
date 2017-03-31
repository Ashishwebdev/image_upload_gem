json.extract! listing_post, :id, :Title, :Content, :created_at, :updated_at
json.url listing_post_url(listing_post, format: :json)
