class CreateApartments < ActiveRecord::Migration[7.2]
  def change
    create_table :apartments do |t|
      t.string :numero
      t.references :building, null: false, foreign_key: true

      t.timestamps
    end
  end
end
