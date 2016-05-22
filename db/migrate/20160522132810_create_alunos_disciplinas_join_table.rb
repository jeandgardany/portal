class CreateAlunosDisciplinasJoinTable < ActiveRecord::Migration
  def change
  	create_table :alunos_disciplinas, id: false do |t|
  		t.integer :aluno_id
  		t.integer :disciplina_id
	end
  end
end
