class ChangeColumnDefault < ActiveRecord::Migration[6.1]
  def change
    change_column_default :leads, :status, nil
  end
end
