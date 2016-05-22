require 'rails_helper'

RSpec.describe "alunos/new", type: :view do
  before(:each) do
    assign(:aluno, Aluno.new(
      :nome => "MyString",
      :matricula => 1,
      :endereco => "MyString",
      :cpf => "MyString",
      :rg => "MyString",
      :user => nil,
      :curso => nil,
      :disciplina => nil,
      :turma => nil
    ))
  end

  it "renders new aluno form" do
    render

    assert_select "form[action=?][method=?]", alunos_path, "post" do

      assert_select "input#aluno_nome[name=?]", "aluno[nome]"

      assert_select "input#aluno_matricula[name=?]", "aluno[matricula]"

      assert_select "input#aluno_endereco[name=?]", "aluno[endereco]"

      assert_select "input#aluno_cpf[name=?]", "aluno[cpf]"

      assert_select "input#aluno_rg[name=?]", "aluno[rg]"

      assert_select "input#aluno_user_id[name=?]", "aluno[user_id]"

      assert_select "input#aluno_curso_id[name=?]", "aluno[curso_id]"

      assert_select "input#aluno_disciplina_id[name=?]", "aluno[disciplina_id]"

      assert_select "input#aluno_turma_id[name=?]", "aluno[turma_id]"
    end
  end
end
