describe UsersController do 
  describe "responding to GET show" do

    it "should expose the requested user as @user" do
      get :show, :id => users(:shingara).id
      assigns[:user].should == users(:shingara)
    end

    describe "with mime type of xml" do

      it "should render the requested user as xml" do
        request.env["HTTP_ACCEPT"] = "application/xml"
        get :show, :id => users(:shingara).id
        response.body.should == users(:shingara).to_xml
      end
    end
  end
end
