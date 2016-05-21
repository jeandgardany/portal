require 'rails_helper'

RSpec.describe "turmas/new", type: :view do
  before(:each) do
    assign(:turma, Turma.new(
      :codigo => "MyString",
      :turno => "MyString",
      :semestre => "MyString",
      :disciplina => nil,
      :capacidade => 1,
      :aluno => nil
    ))
  end

  it "renders new turma form" do
    render

    assert_select "form[action=?][method=?]", turmas_path, "post" do

      assert_select "input#turma_codigo[name=?]", "turma[codigo]"

      assert_select "input#turma_turno[name=?]", "turma[turno]"

      assert_select "input#turma_semestre[name=?]", "turma[semestre]"

      assert_select "input#turma_disciplina_id[name=?]", "turma[disciplina_id]"

      assert_select "input#turma_capacidade[name=?]", "turma[capacidade]"

      assert_select "input#turma_aluno_id[name=?]", "turma[aluno_id]"
    end
  end
end
