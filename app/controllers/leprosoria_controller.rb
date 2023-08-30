# frozen_string_literal: true

class LeprosoriaController < ApplicationController
  before_action :set_leprosorium, only: %i[show edit update destroy]

  def index
    @leprosoria = Leprosorium.all
  end

  def show; end

  def new
    @leprosorium = Leprosorium.new
  end

  def create
    @leprosorium = Leprosorium.new(leprosorium_params)

    if @leprosorium.save
      redirect_to leprosoria_path, notice: 'Leprosorium was successfully created.'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @leprosorium.update(leprosorium_params)
      redirect_to leprosoria_path, notice: 'Leprosorium was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @leprosorium.destroy
    redirect_to leprosoria_path, notice: 'Leprosorium was successfully destroyed.'
  end

  private

  def set_leprosorium
    @leprosorium = Leprosorium.find(params[:id])
  end

  def leprosorium_params
    params.require(:leprosorium).permit(:title)
  end
end
