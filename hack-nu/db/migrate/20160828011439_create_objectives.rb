class CreateObjectives < ActiveRecord::Migration
  def change
    create_table :objectives do |t|
      t.string :name
      t.string :details
      t.float :amount
      t.date :time
      t.float :monthly_amount

      t.timestamps null: false
    end
  end
end
