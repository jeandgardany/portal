require 'rails_helper'

RSpec.describe "disciplinas/index", type: :view do
  before(:each) do
    assign(:disciplinas, [
      Disciplina.create!(
        :nome => "Nome",
        :codigo => 1,
        :curso => nil,
        :funcao => nil,
        :funcionario => nil
      ),
      Disciplina.create!(
        :nome => "Nome",
        :codigo => 1,
        :curso => nil,
        :funcao => nil,
        :funcionario => nil
      )
    ])
  end

  it "renders a list of disciplinas" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
