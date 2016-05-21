require 'rails_helper'

RSpec.describe "turmas/show", type: :view do
  before(:each) do
    @turma = assign(:turma, Turma.create!(
      :codigo => "Codigo",
      :turno => "Turno",
      :semestre => "Semestre",
      :disciplina => nil,
      :capacidade => 1,
      :aluno => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Codigo/)
    expect(rendered).to match(/Turno/)
    expect(rendered).to match(/Semestre/)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
  end
end
