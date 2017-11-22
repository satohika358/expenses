class FixTypeName < ActiveRecord::Migration
  def change
  	rename_column :expenses, :type, :flow
  end
end
