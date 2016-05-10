require 'rails_helper'

RSpec.describe "alunos/index", type: :view do
  before(:each) do
    assign(:alunos, [
      Aluno.create!(
        :nome => "Nome",
        :matricula => 1,
        :endereco => "Endereco",
        :user => nil
      ),
      Aluno.create!(
        :nome => "Nome",
        :matricula => 1,
        :endereco => "Endereco",
        :user => nil
      )
    ])
  end

  it "renders a list of alunos" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
