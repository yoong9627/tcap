class CreateTimecaps < ActiveRecord::Migration
  def change
    create_table :timecaps do |t|
      t.string :title
      t.text :body
      t.time :wdate

      t.timestamps null: false
    end
  end
end
