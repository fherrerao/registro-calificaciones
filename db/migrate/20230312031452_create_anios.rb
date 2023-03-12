class CreateAnios < ActiveRecord::Migration[7.0]
  def change
    create_table :anios do |t|
      t.string :descripcion
      t.float :notaMinima

      t.timestamps
    end
  end
end
