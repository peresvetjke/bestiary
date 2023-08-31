# frozen_string_literal: true

class LeprosoriaController < ApplicationController
  before_action :set_leprosorium, only: %i[show edit update destroy]

  def index
    @leprosoria = Leprosorium.ordered
  end

  def show; end

  def new
    @leprosorium = Leprosorium.new
  end

  def create
    @leprosorium = Leprosorium.new(leprosorium_params)

    if @leprosorium.save
      respond_to do |format|
        format.html { redirect_to leprosoria_path, notice: 'Leprosorium was successfully created.' }
        format.turbo_stream
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @leprosorium.update(leprosorium_params)
      redirect_to leprosoria_path, notice: 'Leprosorium was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @leprosorium.destroy

    respond_to do |format|
      format.html { redirect_to leprosoria_path, notice: 'Leprosorium was successfully destroyed.' }
      format.turbo_stream
    end
  end

  private

  def set_leprosorium
    @leprosorium = Leprosorium.find(params[:id])
  end

  def leprosorium_params
    params.require(:leprosorium).permit(:title)
  end
end
