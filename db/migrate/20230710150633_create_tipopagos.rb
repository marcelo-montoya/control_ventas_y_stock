class CreateTipopagos < ActiveRecord::Migration[7.0]
  def change
    create_table :tipopagos do |t|
      t.string :nombre
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
