class CreateAlunos < ActiveRecord::Migration
  def change
    create_table :alunos do |t|
      t.string :nome, null: false
      t.string :matricula, null: false, default: 'MA2001', unique: true
      t.date :data_nascimento, null: false
      t.string :endereco, null: false
      t.string :cpf, null: false, unique: true
      t.string :rg, null: false, unique: true
      t.string :status, null: false, default: "Ativo"
      t.references :user, index: true, foreign_key: true
      t.references :curso, index: true, foreign_key: true
      t.references :disciplina, index: true, foreign_key: true
      t.references :turma, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
