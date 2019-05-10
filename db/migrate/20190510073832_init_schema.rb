class InitSchema < ActiveRecord::Migration[5.2]
  def change
    create_table :schools, id: :integer do |t|
      t.text :name, null: false

      t.datetime :created_at, null: false
    end

    create_table :years, id: :integer do |t|
      t.text :name, null: false

      t.datetime :created_at, null: false
    end

    create_table :users, id: :integer do |t|
      t.text :sei, null: false
      t.text :mei, null: false
      t.references :school, type: :integer, foreign_key: true, null: false

      t.timestamps
    end

    create_table :user_years, id: :integer do |t|
      t.references :user, type: :integer, foreign_key: true, index: false, null: false
      t.references :year, type: :integer, foreign_key: true, index: false, null: false

      t.datetime :created_at, null: false
    end

    add_index :user_years, [:user_id, :year_id], unique: true
  end
end
