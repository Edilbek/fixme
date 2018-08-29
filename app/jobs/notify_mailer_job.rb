class NotifyMailerJob < ApplicationJob
  queue_as :default

  def perform(problem_id)
    problem = Problem.find_by(id: problem_id)
    ProblemMailer.state_changed(problem).deliver_later
  end
end
