class RemoveEquipmentFromPreferences < ActiveRecord::Migration[7.1]
  def change
    remove_column :preferences, :equipment, :string
  end
end
