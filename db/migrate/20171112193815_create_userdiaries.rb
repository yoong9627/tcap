class CreateUserdiaries < ActiveRecord::Migration
  def change
    create_table :userdiaries do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
