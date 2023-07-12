class CreateGenresQuotesJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :genres, :quotes
  end
end
