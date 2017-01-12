class AddAddressToBees < ActiveRecord::Migration[5.0]
  def change
    add_column :bees, :address, :string
  end
end
