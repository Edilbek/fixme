# Preview all emails at http://localhost:3000/rails/mailers/problem_mailer
class ProblemMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/problem_mailer/state_changed
  def state_changed
    ProblemMailerMailer.state_changed
  end

end
