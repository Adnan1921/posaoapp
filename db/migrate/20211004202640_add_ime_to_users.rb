class AddImeToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :ime, :string
  end
end
