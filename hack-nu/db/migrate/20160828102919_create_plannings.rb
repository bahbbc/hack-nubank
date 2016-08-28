class CreatePlannings < ActiveRecord::Migration
  def change
    create_table :plannings do |t|
      t.string :name
      t.string :category
      t.string :subcategory
      t.float :value

      t.timestamps null: false
    end
  end
end
