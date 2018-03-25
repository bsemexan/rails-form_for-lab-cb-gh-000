class SchoolClassesController < ApplicationController

  def index
    @class = SchoolClass.all
  end
  
  def new
    @class = SchoolClass.new
  end

  def create
    @class = SchoolClass.new()
  end

  private

  def class_params(*arg)
    params.require(:title).permit(*arg)
  end
end
