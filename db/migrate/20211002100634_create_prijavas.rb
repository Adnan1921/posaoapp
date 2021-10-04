class CreatePrijavas < ActiveRecord::Migration[6.1]
  def change
    create_table :prijavas do |t|
      t.string :ime_prezime
      t.date :datum_rodjenja
      t.string :email
      t.string :broj_telefona
      t.string :adresa
      t.string :strucna_sprema

      t.timestamps
    end
  end
end
