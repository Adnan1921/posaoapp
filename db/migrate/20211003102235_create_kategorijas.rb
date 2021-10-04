class CreateKategorijas < ActiveRecord::Migration[6.1]
  def change
    create_table :kategorijas do |t|
      t.string :naziv_kategorije
      t.text :opis_kategorije

      t.timestamps
    end
  end
end
