class AddColumnMoviesSubgenre < ActiveRecord::Migration
  def change
    add_column :movies, :subgenre, :string
  end
end
