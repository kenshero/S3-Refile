class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :profile_image_id

      t.timestamps null: false
    end
  end
end
