class CreateGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :grades do |t|
      t.string :name
      t.string :course
      t.integer :idnumber
      t.integer :prelim
      t.integer :midterm
      t.integer :prefi
      t.integer :final

      t.timestamps
    end
  end
end
