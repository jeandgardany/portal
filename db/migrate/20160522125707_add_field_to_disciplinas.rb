class AddFieldToDisciplinas < ActiveRecord::Migration
  def change
    add_reference :disciplinas, :aluno, index: true, foreign_key: true
  end
end
