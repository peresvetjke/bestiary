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
      message = 'Leprosorium was successfully created.'
      respond_to do |format|
        format.html { redirect_to leprosoria_path, notice: message }
        format.turbo_stream { flash.now[:notice] = message }
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @leprosorium.update(leprosorium_params)
      message = 'Leprosorium was successfully updated.'
      respond_to do |format|
        format.html { redirect_to leprosoria_path, notice: message }
        format.turbo_stream { flash.now[:notice] = message }
      end
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @leprosorium.destroy

    message = 'Leprosorium was successfully destroyed.'
    respond_to do |format|
      format.html { redirect_to leprosoria_path, notice: message }
      format.turbo_stream { flash.now[:notice] = message }
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
