class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.integer :user_id
      t.string :desctiption
      t.string :image

      t.timestamps
    end
  end
end
