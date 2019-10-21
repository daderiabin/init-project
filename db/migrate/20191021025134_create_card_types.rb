class CreateCardTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :card_types do |t|
      t.string :quality

      t.timestamps
    end
  end
end
