class CreateSlambinita < ActiveRecord::Migration[6.0]
  def change
    create_table :slambinita do |t|
      t.string :name
      t.string :birthday
      t.string :whatsapp
      t.string :email
      t.text :follow
      t.text :memory
      t.text :quote
      t.text :thoughts
      t.string :picture

      t.timestamps
    end
  end
end
