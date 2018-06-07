require 'rails_helper'

RSpec.describe "Todos API", type: :request do
  # initialize test data
  let!(:problems) { create_list(:problem, 10) }
  let(:problem_id) { problems.first.data }

  describe "GET /problems" do
    # make HTTP get request before each example
    before { get '/problems' }

    it 'returns problems' do
      expect(json).not_to be_empty
      expect(json.size).not_to eq(10)
    end

    it "returns status code 200" do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /problems/:id' do
    before { get "/problems/#{problem_id}" }

    context "when the record exists" do
      it "returns the problem" do
        expect(json).not_to be_empty
        expect(json['id']).to eq(problem_id)
      end

      it "returns status code 200" do
        expect(response).to have_http_status(200)
      end
    end

    context "when the record does not exists" do
      let(:problem_id) { 100 }

      it "returns status code 404" do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Problem/)
      end
    end
  end

  describe "POST /problems" do
    let(:valid_attributes) { {
      title: 'fixme', description: 'fix problems',
      images:  Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/app/assets/images/logo.png'))),
      latitude: '42.874', longitude: '74.567'
    } }
  end
end
