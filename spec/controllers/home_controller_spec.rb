# -*- encoding : utf-8 -*-
require 'rails_helper'
RSpec.describe HomeController, type: :controller do
  describe "GET #index" do
    it 'has a 200 status code' do
      get :index
      expect(response).to have_http_status(200)
    end

    it 'lists all products' do
      3.times do
        Problem.create(
          title: 'Terrible road',
          description: 'fuu',
          images: [File.open(File.join(Rails.root, "/public/seeds/problem_1.png"))],
          latitude: 42.212,
          longitude: 74.123,
          user_id: 1
        )
      end
      get :index
      expect(assigns(:problems).size).to eq(3)
    end

    it "lists all gmaps markers with status 'unresolved'"  do
      3.times do
        Problem.create(
          title: 'Terrible road',
          description: 'fuu',
          images: [File.open(File.join(Rails.root, "/public/seeds/problem_1.png"))],
          latitude: 42.212,
          longitude: 74.123,
          user_id: 1
        )
      end
      get :index
      expect(assigns(:problems).where(status: 'unresolved').size).to eq(3)
    end
  end
end
