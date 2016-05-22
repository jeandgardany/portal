require 'rails_helper'

RSpec.describe "alunos/show", type: :view do
  before(:each) do
    @aluno = assign(:aluno, Aluno.create!(
      :nome => "Nome",
      :matricula => 1,
      :endereco => "Endereco",
      :cpf => "Cpf",
      :rg => "Rg",
      :user => nil,
      :curso => nil,
      :disciplina => nil,
      :turma => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Endereco/)
    expect(rendered).to match(/Cpf/)
    expect(rendered).to match(/Rg/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
