class AddColorToEvents < ActiveRecord::Migration
  def change
    add_column :events, :color, :color
  end
end
