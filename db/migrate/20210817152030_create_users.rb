class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|

      t.string :nombre
      t.string :email
      t.string :rfc
      t.string :direccion
      t.string :website
      t.integer :telefono

      t.timestamps
    end
  end
end
