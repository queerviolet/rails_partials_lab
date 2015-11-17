class ColorsController < ApplicationController
  def random
    @color = Color.sample
    render :show
  end

  def show
    @colors = params[:colors].split(',').map{|name| Color[name.strip]}    
    if @colors.length > 1
      render :list
    else
      @color = @colors.first
      render :show
    end
  end

  def all
    @colors = Color::ALL
    render :list
  end
end
