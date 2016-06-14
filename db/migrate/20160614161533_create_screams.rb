class CreateScreams < ActiveRecord::Migration
  def change
    create_table :screams do |t|
      t.text :content, required: true
      t.timestamps null: false
    end
  end
end
