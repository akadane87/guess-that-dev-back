class AddAttemptIdToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :attempt_id, :integer, default: 0
  end
end
