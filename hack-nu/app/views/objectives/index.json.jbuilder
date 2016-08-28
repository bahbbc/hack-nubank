json.array!(@objectives) do |objective|
  json.extract! objective, :id, :name, :details, :amount, :time, :monthly_amount
  json.url objective_url(objective, format: :json)
end
