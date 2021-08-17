class AddIdentifierToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :ident, :integer
  end
end
