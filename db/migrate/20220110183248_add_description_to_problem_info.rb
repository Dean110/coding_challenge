class AddDescriptionToProblemInfo < ActiveRecord::Migration[6.0]
  def change
    add_column :problem_infos, :description, :text
  end
end
