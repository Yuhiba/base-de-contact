class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.integer :tel
      t.text :bio

      t.timestamps
    end
  end
end
