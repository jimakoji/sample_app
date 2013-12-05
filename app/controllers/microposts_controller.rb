class MicropostsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user,   only: :destroy

  def create
    @micropost = current_user.microposts.build(params[:micropost])
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @micropost.destroy
    redirect_to root_url
  end

  private

    def correct_user
#      @maicropost = current_user.microposts.find_by_id(params[:id]) #���ꂾ��@micropost��nil�ɂȂ��Ă��܂�!why?
#      redirect_to root_url if @micropost.nil?
      @micropost = Micropost.find_by_id(params[:id])
      redirect_to root_url unless current_user?(@micropost.user)

    end
end