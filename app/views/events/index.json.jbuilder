json.array!(@events) do |event|
  json.extract! event, :id, :name, :description, :attendance, :start, :end, :cost_in_cents
  json.url event_url(event, format: :json)
end
