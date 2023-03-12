class CreateSeccions < ActiveRecord::Migration[7.0]
  def change
    create_table :seccions do |t|
      t.string :descripcion
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
