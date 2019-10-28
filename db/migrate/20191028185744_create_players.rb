class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :full_name
      t.integer :rating
      t.string :position
      t.integer :age
      t.integer :skill_moves
      t.integer :weak_foot
      t.float :price
      t.references :card_type, null: false, foreign_key: true
      t.references :nation, null: false, foreign_key: true
      t.references :league, null: false, foreign_key: true
      t.references :club, null: false, foreign_key: true

      t.timestamps
    end
  end
end
