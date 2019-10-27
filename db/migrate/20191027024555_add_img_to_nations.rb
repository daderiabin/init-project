class AddImgToNations < ActiveRecord::Migration[6.0]
  def change
    add_column :nations, :img, :string
  end
end
