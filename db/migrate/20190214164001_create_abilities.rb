class CreateAbilities < ActiveRecord::Migration[5.2]
  def change
    create_table :abilities do |t|
      t.string :name
      t.references :hero, foreign_key: true

      t.timestamps
    end
  end
end
