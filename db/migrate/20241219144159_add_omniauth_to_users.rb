class AddOmniauthToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :uid, :string
    add_column :users, :provider, :string, null: false, default: ''

    add_index :users, %i[uid provider], unique: true
  end
end
