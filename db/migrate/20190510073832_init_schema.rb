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
  end
end
