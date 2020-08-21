class AddOwnerReferenceToPhotos < ActiveRecord::Migration[6.0]
  def change    add_foreign_key :photos, :users, column: :owner_id    add_index :photos, :owner_id    change_column_null :photos, :owner_id, false
    add_reference :photos, :owner, null: false, foreign_key: true
  end
end
