class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name,         null: false
      t.string :avatar,       null: false
      t.string :specialities, null: false
      t.text   :bio,          null: false
      t.string :site_url
      t.string :github
      t.string :twitter
      t.string :facebook

      t.timestamps
    end
  end
end
