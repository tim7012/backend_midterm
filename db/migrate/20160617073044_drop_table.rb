class DropTable < ActiveRecord::Migration
  def change
    drop_table :post_categoryships
  end
end
