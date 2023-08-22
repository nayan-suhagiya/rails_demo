json.extract! employee, :id, :username, :name, :email, :password, :mobile, :joining_date, :created_at, :updated_at
json.url employee_url(employee, format: :json)
