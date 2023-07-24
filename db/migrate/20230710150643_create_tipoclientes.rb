class CreateTipoclientes < ActiveRecord::Migration[7.0]
  def change
    create_table :tipoclientes do |t|
      t.string :nombre
      t.references :costumer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
