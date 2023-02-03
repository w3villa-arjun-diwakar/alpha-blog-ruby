class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :stu_name
      t.integer :rollno
      t.string :course
      t.integer :phone

      t.timestamps
    end
  end
end
