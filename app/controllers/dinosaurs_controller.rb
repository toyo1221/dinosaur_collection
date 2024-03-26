class DinosaursController < ApplicationController
  def index
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

  private

  def dinosaur_params
    params.require(:dinosaur).permit(:image, :name, :eating_id, :era_id, :size, :weight, :explanation)
  end
end