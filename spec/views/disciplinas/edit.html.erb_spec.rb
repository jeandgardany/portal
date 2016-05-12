require 'rails_helper'

RSpec.describe "disciplinas/edit", type: :view do
  before(:each) do
    @disciplina = assign(:disciplina, Disciplina.create!(
      :nome => "MyString",
      :codigo => 1,
      :curso => nil,
      :funcao => nil,
      :funcionario => nil
    ))
  end

  it "renders the edit disciplina form" do
    render

    assert_select "form[action=?][method=?]", disciplina_path(@disciplina), "post" do

      assert_select "input#disciplina_nome[name=?]", "disciplina[nome]"

      assert_select "input#disciplina_codigo[name=?]", "disciplina[codigo]"

      assert_select "input#disciplina_curso_id[name=?]", "disciplina[curso_id]"

      assert_select "input#disciplina_funcao_id[name=?]", "disciplina[funcao_id]"

      assert_select "input#disciplina_funcionario_id[name=?]", "disciplina[funcionario_id]"
    end
  end
end
