require 'rails_helper'

RSpec.describe "funcaos/new", type: :view do
  before(:each) do
    assign(:funcao, Funcao.new(
      :cargo => "MyString"
    ))
  end

  it "renders new funcao form" do
    render

    assert_select "form[action=?][method=?]", funcaos_path, "post" do

      assert_select "input#funcao_cargo[name=?]", "funcao[cargo]"
    end
  end
end
