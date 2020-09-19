# frozen_string_literal :true

class BoroughsController < ApplicationController
  def index
    @boroughs = Borough.all
  end

  def show
    @borough = Borough.find(params[:id])
  end

  def new
    @borough = Borough.new
  end

  def edit
    @borough = Borough.find(params[:id])
  end

  def create
    @borough = Borough.new(borough_params)

    if @borough.save
      redirect_to @borough
    else
      render('new')
    end
  end

  def update
    @borough = Borough.find(params[:id])

    if @borough.update(borough_params)
      redirect_to(@borough)
    else
      render('edit')
    end
  end

  def destroy
    Borough.delete(params[:id])

    redirect_to(boroughs_path)
  end

  private

  def borough_params
    params.require(:borough).permit(:id, :name, :designation, :population, :website)
  end

end
