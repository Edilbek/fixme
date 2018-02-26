# -*- encoding : utf-8 -*-
class HomeController < ApplicationController
  def index
    @problems = Problem.all
  end
end
