require 'rails_helper'

RSpec.describe "turmas/index", type: :view do
  before(:each) do
    assign(:turmas, [
      Turma.create!(
        :codigo => "Codigo",
        :turno => "Turno",
        :semestre => "Semestre",
        :disciplina => nil,
        :capacidade => 1,
        :aluno => nil
      ),
      Turma.create!(
        :codigo => "Codigo",
        :turno => "Turno",
        :semestre => "Semestre",
        :disciplina => nil,
        :capacidade => 1,
        :aluno => nil
      )
    ])
  end

  it "renders a list of turmas" do
    render
    assert_select "tr>td", :text => "Codigo".to_s, :count => 2
    assert_select "tr>td", :text => "Turno".to_s, :count => 2
    assert_select "tr>td", :text => "Semestre".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
