class UsersController < ApplicationController                                                                                                

  def index                                                                                                                                  
    @users = User.find(:all)                                                                                                                 
    respond_to do |format|                                                                                                                   
      format.html # index.html.erb                                                                                                           
      format.xml  { render :xml => @users }                                                                                                  
    end                                                                                                                                      
  end                                                                                                                                        
                                                                                                                                             
  def show                                                                                                                                   
    @user = User.find(params[:id])                                                                                                           
    respond_to do |format|                                                                                                                   
      format.html # show.html.erb                                                                                                            
      format.xml  { render :xml => @user }                                                                                                   
    end                                                                                                                                      
  end 

  def create
    @user = User.new(params[:user])
    respond_to do |format|
      if @user.save
        flash[:notice] = 'User was successfully created.'
        format.html { redirect_to(@user) }
      else
        format.html { render :action => "new" }
      end
    end
  end
end
