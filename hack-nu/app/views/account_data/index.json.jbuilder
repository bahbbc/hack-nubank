json.array!(@account_data) do |account_datum|
  json.extract! account_datum, :id, :user_id, :amount, :category, :name
  json.url account_datum_url(account_datum, format: :json)
end
