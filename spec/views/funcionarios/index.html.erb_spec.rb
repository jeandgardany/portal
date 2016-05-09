require 'rails_helper'

RSpec.describe "funcionarios/index", type: :view do
  before(:each) do
    assign(:funcionarios, [
      Funcionario.create!(
        :nome => "Nome",
        :matricula => 1,
        :user_email => 2,
        :endereco => "Endereco",
        :funcao_cargo => 3,
        :user => nil,
        :funcao => nil
      ),
      Funcionario.create!(
        :nome => "Nome",
        :matricula => 1,
        :user_email => 2,
        :endereco => "Endereco",
        :funcao_cargo => 3,
        :user => nil,
        :funcao => nil
      )
    ])
  end

  it "renders a list of funcionarios" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
