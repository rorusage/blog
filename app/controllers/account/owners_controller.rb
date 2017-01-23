class Account::OwnersController < ApplicationController
  before_action :authenticate_user!

  def new
    @account_owner = current_user.build_owner
  end

  def create
    @account_owner = current_user.create_owner(profile_params)

    if @account_owner.save
      puts "aaaa"
      redirect_to posts_path, notice: "新增個人自介成功！"
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def show
    @account_owner = current_user.owner
  end

  private

  def profile_params
    params.require(:account_owner).permit(:content)
  end
end
