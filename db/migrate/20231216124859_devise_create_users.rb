class DeviseCreateUsers < ActiveRecord::Migration[7.1]
  def change
    # create_table :users do |t| を削除またはコメントアウト
    # 以下のコードを追加:
    
    add_column :users, :encrypted_password, :string, null: false, default: ""
    add_column :users, :reset_password_token, :string
    add_column :users, :reset_password_sent_at, :datetime
    add_column :users, :remember_created_at, :datetime
    # その他の必要なカラムを追加

    
    add_index :users, :reset_password_token, unique: true
    # その他の必要なインデックスを追加
  end
end
