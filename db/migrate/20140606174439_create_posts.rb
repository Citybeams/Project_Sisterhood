class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :state
      t.text :text

      t.timestamps
    end
  end
end
