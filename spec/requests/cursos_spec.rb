require 'rails_helper'

RSpec.describe "Cursos", type: :request do
  describe "GET /cursos" do
    it "works! (now write some real specs)" do
      get cursos_path
      expect(response).to have_http_status(200)
    end
  end
end
