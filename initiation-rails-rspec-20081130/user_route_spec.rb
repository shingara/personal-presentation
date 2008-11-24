describe UsersController do
  describe "route generation" do
    it "should map #index" do
      route_for(:controller => "users", 
                :action => "index").should == "/users"                                                               
    end
  
    it "should map #new" do
      route_for(:controller => "users", 
                :action => "new").should == "/users/new"
    end
  
    it "should map #show" do
      route_for(:controller => "users", 
                :action => "show", :id => 1).should == "/users/1"
    end
  
    it "should map #edit" do
      route_for(:controller => "users", 
                :action => "edit", :id => 1).should == "/users/1/edit"
    end
  
    it "should map #update" do
      route_for(:controller => "users", 
                :action => "update", :id => 1).should == "/users/1"
    end
  
    it "should map #destroy" do
      route_for(:controller => "users", 
                :action => "destroy", :id => 1).should == "/users/1"
    end
  end
end
