class HomeController < ApplicationController
  def index
    @datasets = Dataset.all.take(10)
  end
end
