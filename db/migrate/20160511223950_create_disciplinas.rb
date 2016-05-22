class CreateDisciplinas < ActiveRecord::Migration
  def change
    create_table :disciplinas do |t|
      t.string :nome, null: false
      t.string :codigo, null: false, default: "D200", unique: true
      t.references :curso, index: true, foreign_key: true
      t.references :funcao, index: true, foreign_key: true
      t.references :funcionario, index: true, foreign_key: true
      t.references :aluno, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
