class ChangeDateType < ActiveRecord::Migration
  def change
    change_column :expenses, :start_time, :datetime
  end
end
