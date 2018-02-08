class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.text :body
      t.references :question, foreign_key: true

      t.timestamps
    end
    add_foreign_key :answers, :questions
  end
end
