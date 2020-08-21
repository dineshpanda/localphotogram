class AddPhotoReferenceToVotes < ActiveRecord::Migration[6.0]
  def change    add_foreign_key :votes, :photos, column: :photo_id    add_index :votes, :photo_id    change_column_null :votes, :photo_id, false
    add_reference :votes, :photo, null: false, foreign_key: true
  end
end
