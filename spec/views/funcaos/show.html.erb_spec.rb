require 'rails_helper'

RSpec.describe "funcaos/show", type: :view do
  before(:each) do
    @funcao = assign(:funcao, Funcao.create!(
      :cargo => "Cargo"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Cargo/)
  end
end
