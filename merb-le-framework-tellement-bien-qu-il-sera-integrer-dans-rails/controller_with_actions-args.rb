class Users < Application
  def show(id)
    @user = User.get(id)
    display @user
  end

  def index(page=1, per_page=10)
    @users = User.paginate(page, 
                           per_page)
    display @users
  end

end
