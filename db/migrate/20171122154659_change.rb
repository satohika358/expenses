class Change < ActiveRecord::Migration
  def change
    change_column :expenses, :start_time, :date
  end
end
