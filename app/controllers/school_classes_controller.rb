class SchoolClassesController < ApplicationController

  def index
    @class = SchoolClass.all
  end

  def new
    @class = SchoolClass.new
  end

  def create
    @class = SchoolClass.new(class_params(:title,:room_number))
    @class.save
    redirect_to school_class_path(@class)
  end

  def edit
    @class = SchoolClass.find(params[:id])
  end

  private

  def class_params(*arg)
    params.require(:school_class).permit(*arg)
  end
end
