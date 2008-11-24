describe UsersController do 

  describe "responding to GET index" do
    it "should expose all users as @users" do
      get :index
      assigns[:users].should == [users(:shingara)]
    end

    describe "with mime type of xml" do
      it "should render all users as xml" do
        request.env["HTTP_ACCEPT"] = "application/xml"
        get :index                                                                                                                           
        response.body.should == users(:shingara).to_xml
      end
    end                                                                                                                                      
  end
end
