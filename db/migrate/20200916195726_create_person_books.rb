class CreatePersonBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :person_books do |t|
      t.references :book, null: false, foreign_key: true
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
