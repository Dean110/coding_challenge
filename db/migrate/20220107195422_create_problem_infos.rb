class CreateProblemInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :problem_infos do |t|
      t.string :key
      t.string :answer
      t.references :username, null: false, foreign_key: true

      t.timestamps
    end
  end
end
