class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :nombre
      t.integer :precio
      t.string :descripcion
      t.string :cantidad

      t.timestamps
    end
  end
end
