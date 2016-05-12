require 'rails_helper'

RSpec.describe "disciplinas/show", type: :view do
  before(:each) do
    @disciplina = assign(:disciplina, Disciplina.create!(
      :nome => "Nome",
      :codigo => 1,
      :curso => nil,
      :funcao => nil,
      :funcionario => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
