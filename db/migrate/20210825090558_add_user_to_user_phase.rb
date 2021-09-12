class AddUserToUserPhase < ActiveRecord::Migration[6.1]
  def change
    add_reference :user_phases, :user, null: false, foreign_key: true
  end
end
