class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :username
      t.string :name
      t.string :email
      t.string :password
      t.integer :mobile
      t.date :joining_date

      t.timestamps
    end
  end
end
