class AddPosaoIdToPrijava < ActiveRecord::Migration[6.1]
  def change
    add_column :prijavas, :posao_id, :string
  end
end
