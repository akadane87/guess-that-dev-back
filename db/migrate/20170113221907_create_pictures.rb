class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.references :name, index: true, foreign_key: true, null: false
      t.string :url


      t.timestamps null: false
    end
  end
end
