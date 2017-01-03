class CreateTemperaturas < ActiveRecord::Migration[5.0]
  def change
    create_table :temperaturas do |t|
      t.string :temperatura
      t.string :ciudad
      t.date :fecha

      t.timestamps
    end
  end
end
