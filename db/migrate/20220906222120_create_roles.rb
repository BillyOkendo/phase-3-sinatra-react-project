class CreateRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :roles do |t|
      t.string :salary
      t.string :username
      t.integer :attendant_id
      t.integer :house_id
    end
  end
end
