require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  describe "POST create" do
    context "with valid attributes" do
      it 'should a valid factory' do
        user = build(:user, email: 'edil.talantbekov@gmail.com')
        problem = build(:problem, title: 'Edil Problem', description: 'edasdas', user: user, latitude: 123, longitude: 1233, status: 0)
        comment = build(:comment, user: user, problem: problem)
      end

      it 'creates new comment' do

      end
    end

    context "with invalid attributes" do
      it 'does not save the new comment' do

      end
    end
  end
end
