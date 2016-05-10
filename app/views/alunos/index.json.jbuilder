json.array!(@alunos) do |aluno|
  json.extract! aluno, :id, :nome, :matricula, :nascimento, :endereco, :data_cadast, :user_id, :user_id
  json.url aluno_url(aluno, format: :json)
end
