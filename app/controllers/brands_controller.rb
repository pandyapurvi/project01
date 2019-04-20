class BrandsController < ApplicationController
def index
  @brands = Brand.all
end

def show
  @brand = Brand.find params[:id]
end

def new
  @brand = Brand.new
end

def create
  brand = Brand.create brand_params
  redirect_to brand_path(brand.id)
end

def edit
  @brand = Brand.find params[:id]
end

def update
  brand = Brand.find params[:id]
  brand.update brand_params
  redirect_to brand_path(brand.id)
end

def destroy
 brand = Brand.find params[:id]
 brand.destroy
 redirect_to brand_path(brand.id)
end

private
def brand_params
  #strong parameters "whitelist of sanitize input (stuff that okay to put in the database)"
  params.require(:brand).permit(:name,:image)
end
end
