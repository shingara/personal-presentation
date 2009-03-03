class Users < Application
  def show
    @user = User.get(params[:id])
    display @user
  end

  def index
    @users = User.paginate(params[:page], 
                           params[:per_page])
    display @users
  end

end
