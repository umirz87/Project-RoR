class AddStatusToLeads < ActiveRecord::Migration[6.1]
  def change
    add_column :leads, :status, :integer ,default: 0
  end
end
