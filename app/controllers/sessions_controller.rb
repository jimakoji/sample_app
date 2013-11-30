class SessionsController < ApplicationController

  def new
  end

def create
  user = User.find_by_email(params[:session][:email].downcase)
  if user && user.authenticate(params[:session][:password])
    # ���[�U���T�C���C�������A���[�U�y�[�W (show) �Ƀ��_�C���N�g����B
    sign_in user
    redirect_to user
  else
    # �G���[���b�Z�[�W��\�����A�T�C���C���t�H�[�����ĕ`�悷��B
    flash.now[:error] = 'Invalid email/password combination' # ��肠��!
    render 'new'
  end
end


  def destroy
    sign_out
    redirect_to root_path
  end
end
