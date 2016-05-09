require 'rails_helper'

RSpec.describe "funcaos/edit", type: :view do
  before(:each) do
    @funcao = assign(:funcao, Funcao.create!(
      :cargo => "MyString"
    ))
  end

  it "renders the edit funcao form" do
    render

    assert_select "form[action=?][method=?]", funcao_path(@funcao), "post" do

      assert_select "input#funcao_cargo[name=?]", "funcao[cargo]"
    end
  end
end
