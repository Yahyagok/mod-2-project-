class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.string :genre 
      t.string :director
      t.string :plot 
      t.string :award
      t.timestamps
    end
  end
end
