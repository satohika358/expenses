json.extract! expense, :id, :name, :value, :start_time, :created_at, :updated_at
json.url expense_url(expense, format: :json)
