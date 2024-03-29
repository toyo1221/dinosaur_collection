class DinosaursController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]
  before_action :find_dinosaur, only: [:show, :edit, :update, :destroy]
  def index
    dinosaur_filter
    @topics=Topic.all
  end

  def new
    @dinosaur = Dinosaur.new
    @topic = Topic.new
    
  end

  def create
    @dinosaur = Dinosaur.new(dinosaur_params)
    if @dinosaur.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
      @dinosaur.errors.clear
  end

  def update
    if @dinosaur.update(dinosaur_params)
      redirect_to dinosaur_path(@dinosaur.id)
    else
      render :edit,status: :unprocessable_entity
    end
  end

  def destroy
    @dinosaur.destroy
    redirect_to root_path
  end


  private
  def dinosaur_filter
    if params[:eating].present?
      eating_name = params[:eating]
      eating_id = Eating.find_by(name: eating_name)&.id
      if eating_id
        @dinosaurs = Dinosaur.where(eating_id: eating_id).order(:name)
      else
        flash[:alert] = "Invalid eating type: #{eating_name}"
        redirect_to dinosaurs_path
      end
    else
      @dinosaurs = Dinosaur.order(:name)
    end
  end


  def find_dinosaur
    @dinosaur = Dinosaur.find(params[:id])
  end

  def dinosaur_params
    params.require(:dinosaur).permit(:image, :name, :eating_id, :era_id, :size, :weight, :explanation).merge(admin_id:current_admin.id)
  end
end