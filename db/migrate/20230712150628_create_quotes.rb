class CreateQuotes < ActiveRecord::Migration[7.0]
  def change
    create_table :quotes do |t|
      t.text :content
      t.integer :author_id

      t.timestamps
    end
  end
end
