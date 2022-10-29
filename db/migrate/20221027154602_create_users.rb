class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :title
      t.date :startdate
      t.date :enddate
      t.string :end
      t.string :sche_memo

      t.timestamps
    end
  end
end