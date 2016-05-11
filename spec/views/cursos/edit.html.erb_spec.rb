require 'rails_helper'

RSpec.describe "cursos/edit", type: :view do
  before(:each) do
    @curso = assign(:curso, Curso.create!(
      :nome => "MyString",
      :codigo => "MyString",
      :duracao => "MyString",
      :tipo => "MyString"
    ))
  end

  it "renders the edit curso form" do
    render

    assert_select "form[action=?][method=?]", curso_path(@curso), "post" do

      assert_select "input#curso_nome[name=?]", "curso[nome]"

      assert_select "input#curso_codigo[name=?]", "curso[codigo]"

      assert_select "input#curso_duracao[name=?]", "curso[duracao]"

      assert_select "input#curso_tipo[name=?]", "curso[tipo]"
    end
  end
end
