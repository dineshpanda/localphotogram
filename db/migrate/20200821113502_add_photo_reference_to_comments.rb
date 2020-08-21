class AddPhotoReferenceToComments < ActiveRecord::Migration[6.0]
  def change    add_foreign_key :comments, :photos, column: :photo_id    add_index :comments, :photo_id    change_column_null :comments, :photo_id, false
    add_reference :comments, :photo, null: false, foreign_key: true
  end
end
