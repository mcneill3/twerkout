class CreateTwerk < ActiveRecord::Migration
  def change
    create_table :twerks do |t|
      t.string :title
      t.text :body, limit: 140
      t.timestamps
    end
  end
end
