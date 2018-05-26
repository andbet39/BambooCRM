json.extract! wubook_fetch, :id, :outcome, :raw, :processed, :created_at, :updated_at
json.url wubook_fetch_url(wubook_fetch, format: :json)
