class AddGenreIdToQuotes < ActiveRecord::Migration[7.0]
  def change
    add_reference :quotes, :genre, null: false, foreign_key: true
  end
end
