class Posts < Application

  after :clear_fragment_cache, :only => [:create]
 
  cache :show
  cache :index, :store => :action_store
  eager_cache :create, :index
 
  def index
    @posts = Post.all
    render
  end
  
  def show
    @post = Post.first(:id => params[:id])
    render
  end
  
  def create
    ...
  end

  private

  def clear_fragment_cache
    Merb::Cache[:memcached].delete("custom_key")
  end

end
