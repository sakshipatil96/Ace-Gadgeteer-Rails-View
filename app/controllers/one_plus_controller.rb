class OnePlusController < ApplicationController

  helper_method  :set_action_path

  def index
    create_list_for_index
    set_images
  end

  def show
    @specification = OnePlus.find(params[:id])
    set_modal_images
  end

  private

  def create_list_for_index
    @specifications = OnePlus.where(brand_name: "One Plus")
    @specifications = @specifications.order(launch_date: :desc)
  end

  def set_action_path
    polymorphic_path(one_plu_path)
  end

  def set_images
    @index_images = Dir.glob("app/assets/images/index_images/one_plus/*")
  end

  def set_modal_images
    @model_folder = @specification.phone_name.downcase.gsub(' ', '_')
    @images = Dir.glob("app/assets/images/#{@model_folder}/*")
  end

end