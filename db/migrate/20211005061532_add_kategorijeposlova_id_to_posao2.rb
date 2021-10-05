class AddKategorijeposlovaIdToPosao2 < ActiveRecord::Migration[6.1]
  def change
    add_column :posaos, :kategorijeposlova_id, :string
  end
end
