class CoursesController < ApplicationController
  before_action :set_course, only: [:edit, :update]

  # Show all courses
  def index
    @courses = Course.all
  end

  # Show new lesson form
  def new
    @course = Course.new
  end

  # Create new course in DB
  def create
    @course = Course.new
    if @course.update(course_params)
      redirect_to courses_path
    else
      render :new
    end
  end

  # Show edit form
  def edit
  end

  # Update course in DB
  def update
    if @course.update(course_params)
      redirect_to courses_path
    else
      render :edit
    end
  end

  private

  def course_params
    params.require(:course).permit(:title, :description)
  end

  def set_course
    @course = Course.find(params[:id])
  end
end
