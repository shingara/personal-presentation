Class Users < Application

  provides :xml, :json, :yaml

  # Appel la vue demande par la requete suivant 
  # ce qui est fourni (provides)
  # :xml, :json, :yaml
  def show
    @user = User.get(params[:id])
    display @user
  end

  # recupere /app/view/users/index.(html|xml|json|yaml).haml
  def index
    @users = User.all
    display @users
  end

end
