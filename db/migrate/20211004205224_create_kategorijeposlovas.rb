class CreateKategorijeposlovas < ActiveRecord::Migration[6.1]
  def change
    create_table :kategorijeposlovas do |t|
      t.string :naziv
      t.text :opis

      t.timestamps
    end
  end
end
