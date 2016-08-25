class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :nick
      t.text :body
      t.references :mem, foreign_key: true

      t.timestamps
    end
  end
end
