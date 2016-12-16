class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.timestamps null: false

      t.string :mail_account, null: false
      t.string :first_name
      t.string :last_name
      t.string :knick_name
      t.string :password, null: false
      t.references :school_registered
      t.integer :former_registered
      t.integer :class_registered
      t.references :school_current
      t.integer :former_current
      t.integer :class_current
    end
  end
end
