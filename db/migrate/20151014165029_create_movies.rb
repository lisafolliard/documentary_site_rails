class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.column :title, :string
      t.column :director, :string
      t.column :synopsis, :string

      t.timestamps
    end
  end
end
