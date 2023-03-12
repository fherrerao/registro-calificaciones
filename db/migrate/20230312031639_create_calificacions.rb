class CreateCalificacions < ActiveRecord::Migration[7.0]
  def change
    create_table :calificacions do |t|
      t.integer :bimestre
      t.float :calificacion
      t.string :valorObtenido
      t.references :user, null: false, foreign_key: true
      t.references :tipo, null: false, foreign_key: true      
      t.references :anio, null: false, foreign_key: true      

      t.timestamps
    end
  end
end
