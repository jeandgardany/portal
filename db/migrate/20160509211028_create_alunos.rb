class CreateAlunos < ActiveRecord::Migration
  def change
    create_table :alunos do |t|
      t.string :nome, null: false
      t.integer :matricula, null: false, default: 2001, unique: true
      t.date :nascimento, null: false
      t.string :endereco, null: false
      t.date :data_cadast, null: false
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
