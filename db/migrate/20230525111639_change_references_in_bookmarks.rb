class ChangeReferencesInBookmarks < ActiveRecord::Migration[7.0]
  def change
    remove_reference :bookmarks, :movies, foreign_key: false
    add_reference :bookmarks, :movie, foreign_key: true
  end
end
