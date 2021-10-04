class AddRokToPosaos < ActiveRecord::Migration[6.1]
  def change
  	add_column :posaos, :rok, :datetime
    
  end
end
