class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.boolean :admin?, default: false
      t.string :email
      t.string :mobile_number

      t.timestamps
    end
  end
end
