class CreateProblemCategories < ActiveRecord::Migration
  def change
    create_table :problem_categories do |t|

      t.timestamps null: false
    end
  end
end
