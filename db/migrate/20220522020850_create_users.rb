class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name

      # 创建时间 updated_at created_at
      t.timestamps
    end
  end
end
