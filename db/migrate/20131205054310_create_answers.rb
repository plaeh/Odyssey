class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.boolean :value
      t.text :text
      t.integer :question_id

      t.timestamps
    end
  end
end
