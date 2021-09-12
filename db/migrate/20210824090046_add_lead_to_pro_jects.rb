class AddLeadToProJects < ActiveRecord::Migration[6.1]
  def change
    add_reference :pro_jects, :lead, null: false, foreign_key: true
  end
end
