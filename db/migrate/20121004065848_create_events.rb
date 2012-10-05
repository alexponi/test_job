class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :start_at
      t.datetime :end_at
      t.integer :user_id
      t.integer :period_id
      t.datetime :end_period

      t.timestamps
    end
  end
end
