# -*- encoding : utf-8 -*-
class HomeController < ApplicationController
  def index
    @problems = Problem.all
    @gmap_cluster_markers = Problem.where(status: 'unresolved')
    gon.problems = @problems
  end
end
