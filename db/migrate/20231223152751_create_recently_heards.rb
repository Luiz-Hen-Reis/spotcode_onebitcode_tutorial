class CreateRecentlyHeards < ActiveRecord::Migration[7.1]
  def change
    create_table :recently_heards do |t|
      t.references :user, null: false, foreign_key: true
      t.references :album, null: false, foreign_key: true

      t.timestamps
    end
  end
end
