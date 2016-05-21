class CreateTurmas < ActiveRecord::Migration
  def change
    create_table :turmas do |t|
      t.string :codigo, null: false
      t.string :turno, null: false
      t.string :semestre, null: false
      t.references :disciplina, index: true, foreign_key: true
      t.integer :capacidade, null: false
      t.string :alunos

      t.timestamps null: false
    end
  end
end
