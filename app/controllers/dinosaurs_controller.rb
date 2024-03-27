class DinosaursController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update]
  before_action :find_dinosaur, only: [:show, :edit, :update]
  def index
    @dinosaurs = Dinosaur.order(:name)
  end

  def new
    @dinosaur = Dinosaur.new
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

  private
  def find_dinosaur
    @dinosaur = Dinosaur.find(params[:id])
  end

  def dinosaur_params
    params.require(:dinosaur).permit(:image, :name, :eating_id, :era_id, :size, :weight, :explanation).merge(admin_id:current_admin.id)
  end
end