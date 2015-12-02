class CreateGalleriesPictures < ActiveRecord::Migration
  def change
    create_table :galleries_pictures do |t|
      t.references :gallery, index: true
      t.references :picture, index: true
      t.boolean :cover

      t.timestamps null: false
    end
    add_foreign_key :galleries_pictures, :galleries
    add_foreign_key :galleries_pictures, :pictures
  end
end
