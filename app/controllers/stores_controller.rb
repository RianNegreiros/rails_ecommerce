class StoresController < ApplicationController
  layout 'application'
  
  before_action :authenticate_user!

  def show
    @store = current_user.store
  end

  def edit
    @store = current_user.store
  end

  def update
    @store = current_user.store
    if @store.update(store_params)
      redirect_to store_path
    else
      render :edit
    end
  end

  private

  def store_params
    params.require(:store).permit(
      :domain,
      :subdomain,
      :primary_color,
      :secondary_color
    )
  end
end