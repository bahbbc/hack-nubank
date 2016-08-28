json.array!(@plannings) do |planning|
  json.extract! planning, :id, :name, :category, :subcategory, :value
  json.url planning_url(planning, format: :json)
end
