class UsersController < ApplicationController
  def create
    user = User.new email:'frank@x.com', name: 'frank'
    if user.save
      p 'save 成功了'
      render json: user
    else
      p 'save 失败了'
    end
  end

  def show
    user = User.find_by_name params[:id]
    # 自省
    p '你访问了 show'
  end
end


