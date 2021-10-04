class AddDokumentToPrijavas < ActiveRecord::Migration[6.1]
  def change
    add_column :prijavas, :dokument, :string
  end
end
