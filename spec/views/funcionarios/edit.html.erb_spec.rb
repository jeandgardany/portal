require 'rails_helper'

RSpec.describe "funcionarios/edit", type: :view do
  before(:each) do
    @funcionario = assign(:funcionario, Funcionario.create!(
      :nome => "MyString",
      :matricula => 1,
      :user_email => 1,
      :endereco => "MyString",
      :funcao_cargo => 1,
      :user => nil,
      :funcao => nil
    ))
  end

  it "renders the edit funcionario form" do
    render

    assert_select "form[action=?][method=?]", funcionario_path(@funcionario), "post" do

      assert_select "input#funcionario_nome[name=?]", "funcionario[nome]"

      assert_select "input#funcionario_matricula[name=?]", "funcionario[matricula]"

      assert_select "input#funcionario_user_email[name=?]", "funcionario[user_email]"

      assert_select "input#funcionario_endereco[name=?]", "funcionario[endereco]"

      assert_select "input#funcionario_funcao_cargo[name=?]", "funcionario[funcao_cargo]"

      assert_select "input#funcionario_user_id[name=?]", "funcionario[user_id]"

      assert_select "input#funcionario_funcao_id[name=?]", "funcionario[funcao_id]"
    end
  end
end
