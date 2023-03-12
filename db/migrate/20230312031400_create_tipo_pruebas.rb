class CreateTipoPruebas < ActiveRecord::Migration[7.0]
  def change
    create_table :tipo_pruebas do |t|
      t.string :desTipoPrueba
      t.string :generPrueba

      t.timestamps
    end
  end
end
