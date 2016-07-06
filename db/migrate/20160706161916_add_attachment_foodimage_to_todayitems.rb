class AddAttachmentFoodimageToTodayitems < ActiveRecord::Migration
  def self.up
    change_table :todayitems do |t|
      t.attachment :foodimage
    end
  end

  def self.down
    remove_attachment :todayitems, :foodimage
  end
end
