# -*- encoding : utf-8 -*-
require "rails_helper"

RSpec.describe ProblemMailer, type: :mailer do
  describe "state_changed" do
    let(:mail) { ProblemMailer.state_changed }

    it "renders the headers" do
      expect(mail.subject).to eq("State changed")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
