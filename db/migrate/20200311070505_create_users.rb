class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :school
      t.string :college
      t.date :passout

      t.timestamps
    end
  end
end
