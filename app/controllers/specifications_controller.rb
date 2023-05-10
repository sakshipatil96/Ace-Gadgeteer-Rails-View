
class SpecificationsController < ApplicationController
    before_action :validate_user
    before_action :set_article , only: [:show, :edit, :update, :destroy]  
    
    def index
      @specifications = Specification.all
    end

    def new
      @specification = Specification.new
    end  

    def show
    end  

    def create
      @specification = Specification.new(specification_params)
        if @specification.save
          flash[:notice] = "Article was created successfully."
          redirect_to @specification 
        else
          render 'new'
        end
    end
    
    def edit
    end

    def update
      if @specification.update(specification_params)
        flash[:notice] = "Article was updated successfully."
        redirect_to @specification
      else
        render 'edit'
      end
    end

    def destroy
      @specification.destroy
      redirect_to specifications_path
    end

    private

    def set_article
        @specification = Specification.find(params[:id])
    end 
    
    def specification_params
        params.require(:specification).permit(
            :description,
            :phone_name,
            :variants,
            :launch_date,
            :price,
            :network,
            :body,
            :display,
            :os,
            :processor,
            :memory,
            :camera,
            :sound,
            :security,
            :battery,
            :connection,
            :rating,
            :created_at,
            :updated_at,
            :brand_name
            )
    end

    def validate_user
      redirect_to login_path if session[:user_id].blank?
    end

end