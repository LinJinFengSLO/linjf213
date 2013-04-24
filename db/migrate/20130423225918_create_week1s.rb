class CreateWeek1s < ActiveRecord::Migration
  def change



    create_table :week1s do |t|
      t.string :mon1
      t.string :tue1
      t.string :wed1
      t.string :thu1
      t.string :fri1
      t.string :sat1
      t.string :sun1
      t.string :di1

      t.timestamps
    end
  end
end
