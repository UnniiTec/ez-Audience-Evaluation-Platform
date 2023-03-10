json.extract! myevent, :id, :user_id, :event_id, :myevent_code, :created_at, :updated_at
json.url myevent_url(myevent, format: :json)
