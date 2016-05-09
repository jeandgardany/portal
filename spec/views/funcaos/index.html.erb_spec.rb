require 'rails_helper'

RSpec.describe "funcaos/index", type: :view do
  before(:each) do
    assign(:funcaos, [
      Funcao.create!(
        :cargo => "Cargo"
      ),
      Funcao.create!(
        :cargo => "Cargo"
      )
    ])
  end

  it "renders a list of funcaos" do
    render
    assert_select "tr>td", :text => "Cargo".to_s, :count => 2
  end
end
