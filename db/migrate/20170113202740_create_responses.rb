class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.boolean :response
      t.integer :user_id
      t.integer :picture_id

      t.timestamps null: false
    end
  end
end
