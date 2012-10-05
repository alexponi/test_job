class AddPeriodToEvents < ActiveRecord::Migration
  def change
    add_column :events, :period, :string
  end
end
