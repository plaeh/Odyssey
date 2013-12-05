class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.text :opening_blurb_hook
      t.text :closing_blurb
      t.string :image
      t.string :name

      t.timestamps
    end
  end
end
