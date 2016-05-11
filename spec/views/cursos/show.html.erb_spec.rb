require 'rails_helper'

RSpec.describe "cursos/show", type: :view do
  before(:each) do
    @curso = assign(:curso, Curso.create!(
      :nome => "Nome",
      :codigo => "Codigo",
      :duracao => "Duracao",
      :tipo => "Tipo"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Codigo/)
    expect(rendered).to match(/Duracao/)
    expect(rendered).to match(/Tipo/)
  end
end
