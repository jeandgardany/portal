require 'rails_helper'

RSpec.describe "funcionarios/show", type: :view do
  before(:each) do
    @funcionario = assign(:funcionario, Funcionario.create!(
      :nome => "Nome",
      :matricula => 1,
      :user_email => 2,
      :endereco => "Endereco",
      :funcao_cargo => 3,
      :user => nil,
      :funcao => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Endereco/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
