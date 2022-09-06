class CreateAttendants < ActiveRecord::Migration[6.1]
  def change
    create_table :attendants do |t|
      t.string "username"
      t.string "job"
      t.string "image"
      t.string "salary"
    end
  end
end
