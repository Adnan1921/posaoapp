class CreatePosaos < ActiveRecord::Migration[6.1]
  def change
    create_table :posaos do |t|
      t.string :naziv_oglasa
      t.string :opis_oglasa
      t.string :naziv_poslodava
      t.string :email_poslodavca

      t.timestamps
    end
  end
end
