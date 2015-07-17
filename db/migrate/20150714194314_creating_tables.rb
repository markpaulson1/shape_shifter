class CreatingTables < ActiveRecord::Migration
  def change
		create_table :workouts do |t|
			t.string :name
			t.timestamps
		end

  	create_table :exercises do |t|
  		t.references :workout
  		t.string :name
  		t.text :method
  		t.string :image_url
  		t.timestamps
  	end

  	create_table :logs do |t|
  		t.references :exercise
  		t.references :user
  		t.integer :reps
  		t.timestamps
  	end

  end
end
