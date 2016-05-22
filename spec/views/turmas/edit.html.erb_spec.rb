require 'rails_helper'

RSpec.describe "turmas/edit", type: :view do
  before(:each) do
    @turma = assign(:turma, Turma.create!(
      :codigo => "MyString",
      :turno => "MyString",
      :semestre => "MyString",
      :capacidade => 1,
      :funcionario => nil,
      :disciplina => nil
    ))
  end

  it "renders the edit turma form" do
    render

    assert_select "form[action=?][method=?]", turma_path(@turma), "post" do

      assert_select "input#turma_codigo[name=?]", "turma[codigo]"

      assert_select "input#turma_turno[name=?]", "turma[turno]"

      assert_select "input#turma_semestre[name=?]", "turma[semestre]"

      assert_select "input#turma_capacidade[name=?]", "turma[capacidade]"

      assert_select "input#turma_funcionario_id[name=?]", "turma[funcionario_id]"

      assert_select "input#turma_disciplina_id[name=?]", "turma[disciplina_id]"
    end
  end
end
