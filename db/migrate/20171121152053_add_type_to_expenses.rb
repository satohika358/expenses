class AddTypeToExpenses < ActiveRecord::Migration
  def change
    add_column :expenses, :type, :string
  end
end
