require 'rails_helper'

RSpec.describe "cursos/new", type: :view do
  before(:each) do
    assign(:curso, Curso.new(
      :nome => "MyString",
      :codigo => "MyString",
      :duracao => "MyString",
      :tipo => "MyString"
    ))
  end

  it "renders new curso form" do
    render

    assert_select "form[action=?][method=?]", cursos_path, "post" do

      assert_select "input#curso_nome[name=?]", "curso[nome]"

      assert_select "input#curso_codigo[name=?]", "curso[codigo]"

      assert_select "input#curso_duracao[name=?]", "curso[duracao]"

      assert_select "input#curso_tipo[name=?]", "curso[tipo]"
    end
  end
end
