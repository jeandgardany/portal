require 'rails_helper'

RSpec.describe "cursos/index", type: :view do
  before(:each) do
    assign(:cursos, [
      Curso.create!(
        :nome => "Nome",
        :codigo => "Codigo",
        :duracao => "Duracao",
        :tipo => "Tipo"
      ),
      Curso.create!(
        :nome => "Nome",
        :codigo => "Codigo",
        :duracao => "Duracao",
        :tipo => "Tipo"
      )
    ])
  end

  it "renders a list of cursos" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Codigo".to_s, :count => 2
    assert_select "tr>td", :text => "Duracao".to_s, :count => 2
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
  end
end
