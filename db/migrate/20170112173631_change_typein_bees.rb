class ChangeTypeinBees < ActiveRecord::Migration[5.0]
  def change
    rename_column :bees, :type, :bee_type
  end
end
