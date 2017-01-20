class CreateProblemPosts < ActiveRecord::Migration
  def change
    create_table :problem_posts do |t|
      t.string :title 
      t.string :Category 
      t.text :content 
      t.string :submitted_by 


      t.timestamps null: false
    end
  end
end
