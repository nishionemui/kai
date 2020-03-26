class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string  :name,                null: false
      t.index   :name,                unique: true
      t.integer :age,                 null: false
      t.integer :height,              null: false
      t.integer :weight,              null: false
      t.timestamps
    end
  end
end
