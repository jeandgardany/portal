require 'rails_helper'

RSpec.describe "alunos/show", type: :view do
  before(:each) do
    @aluno = assign(:aluno, Aluno.create!(
      :nome => "Nome",
      :matricula => 1,
      :endereco => "Endereco",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Endereco/)
    expect(rendered).to match(//)
  end
end
