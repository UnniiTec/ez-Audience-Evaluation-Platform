json.extract! event, :id, :evt_name, :evt_host, :evt_sdate, :evt_edate, :evt_desc, :evt_code, :created_at, :updated_at
json.url event_url(event, format: :json)
