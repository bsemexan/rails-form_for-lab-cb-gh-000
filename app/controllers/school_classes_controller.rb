class SchoolClassesController < ApplicationController

  def index
    @class = SchoolClass.all
  end
  
  def new
    @class = SchoolClass.new
  end

  def create
  end
end
