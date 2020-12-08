class AddUserIdToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :user_id, :integer
    add_column :questions, :question_id, :integer
  end
end
