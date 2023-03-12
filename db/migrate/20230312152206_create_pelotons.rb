class CreatePelotons < ActiveRecord::Migration[7.0]
  def change
    create_table :pelotons do |t|
      t.string :descripcion
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
