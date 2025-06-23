class AddBodyToSupportRequests < ActiveRecord::Migration[8.0]
  def change
    add_column :support_requests, :body, :text
  end
end
