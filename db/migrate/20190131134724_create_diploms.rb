class CreateDiploms < ActiveRecord::Migration[5.2]
  def change
    create_table :diploms do |t|
      t.string :name
      t.belongs_to :doctor, index: true
      t.belongs_to :specialty, index: true
      t.timestamps
    end
  end
end
