class CreateSecrets < ActiveRecord::Migration
  def change
    create_table :secrets do |t|
      t.string :title
      t.string :text
      t.string :tags

      t.timestamps null: false
    end
  end
end
