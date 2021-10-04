class AddKategorijaToPosaos < ActiveRecord::Migration[6.1]
  def change
    add_column :posaos, :kategorija, :integer
  end
end
