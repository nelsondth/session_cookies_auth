class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :name
      t.string :isbn
      t.string :author

      t.timestamps
    end
  end
end