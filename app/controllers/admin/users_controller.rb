class Admin::UsersController < ApplicationController
  before_action :admin_only

  def index
    @users = User.all
  end

  private

    def admin_only
      unless current_user.admin?
        redirect_to products_path
      end
    end
end

