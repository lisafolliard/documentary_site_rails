class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.column :movie_id, :integer
      t.column :name, :string
      t.column :comment, :string
      t.column :rating, :integer

      t.timestamps
    end
  end
end
