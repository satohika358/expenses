class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :name
      t.decimal :value
      t.datetime :start_time

      t.timestamps null: false
    end
  end
end
