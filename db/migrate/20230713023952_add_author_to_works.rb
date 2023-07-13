class AddAuthorToWorks < ActiveRecord::Migration[7.0]
  def change
    change_column :works, :author_id, :bigint, null: false
    add_foreign_key :works, :authors
  end
end
