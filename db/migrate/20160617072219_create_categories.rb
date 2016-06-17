class CreateCategories < ActiveRecord::Migration
  def change

    add_column :posts, :category_id, :integer
    add_index :posts, :category_id
    remove_column :post_categoryships, :post_id
    remove_column :post_categoryships, :category_id
  end
end
