# -*- encoding : utf-8 -*-
class ProblemMailer < ApplicationMailer
  def state_changed(problem)
    @problem = problem

    mail to: @problem.user.email, subject: "Статус Вашей #{@problem.title} проблемы изменен!"
  end
end
