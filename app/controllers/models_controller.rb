class ModelsController < ApplicationController

  def index
  
    @models = Model.all
  end

  def show
    @model = Model.find params[:id]
  end

  def new
    @model = Model.new
  end

  def create
    model = Model.create model_params
    redirect_to model_path(model.id)
  end

  def edit
    @model = Model.find params[:id]
  end

  def update
    model = Model.find params[:id]
    model.update model_params
    redirect_to model_path(model.id)
  end

  def destroy
   model = Model.find params[:id]
   model.destroy
   redirect_to model_path(model.id)
  end

  private
  def model_params
    #strong parameters "whitelist of sanitize input (stuff that okay to put in the database)"
    params.require(:model).permit(:name,:size, :drive,:image)
  end
  end
