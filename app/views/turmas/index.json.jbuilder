json.array!(@turmas) do |turma|
  json.extract! turma, :id, :codigo, :turno, :semestre, :disciplina_id, :capacidade, :aluno_id
  json.url turma_url(turma, format: :json)
end
