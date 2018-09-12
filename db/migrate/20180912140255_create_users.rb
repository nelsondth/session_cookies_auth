class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname
      t.date :birthdate
      t.integer :gender

      t.timestamps
    end
  end
end
