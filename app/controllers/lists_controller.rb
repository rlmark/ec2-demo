class ListsController < ApplicationController
  def index
    @people = Person.order("created_at asc")
    @person = Person.new
  end

  def new
  end

  def create
    @person = Person.create(params.require(:person).permit(:name))
    redirect_to root_path
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    render json: {success: true}
  end
end
