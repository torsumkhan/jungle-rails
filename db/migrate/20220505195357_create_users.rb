class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    if !table_exists? :users
      create_table :users do |t|
        t.string :name
        t.string :email
        t.string :password

        t.timestamps
      end
    end
  end
end
