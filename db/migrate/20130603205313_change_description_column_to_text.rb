class ChangeDescriptionColumnToText < ActiveRecord::Migration
  def up
    change_column :products, :description, :text
  end

  def down
  end
end
