class AddScheduleToSourceSubscriptions < ActiveRecord::Migration[5.0]
  def change
    add_column :source_subscriptions, :schedule, :string
  end
end
