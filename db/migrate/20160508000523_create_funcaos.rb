class CreateFuncaos < ActiveRecord::Migration
  def change
    create_table :funcaos do |t|
      t.string :cargo

      t.timestamps null: false
    end
  end
end
