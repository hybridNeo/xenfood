class CreateTodayitems < ActiveRecord::Migration
  def change
    create_table :todayitems do |t|
      t.text :name
      t.integer :calorie
      t.attachment :photo
      t.integer :tot_rating
      t.integer :tot_num
      t.date :tdate

      t.timestamps null: false
    end
  end
end
