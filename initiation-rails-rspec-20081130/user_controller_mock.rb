describe UserController do
  describe "responding to GET show" do
    before :each do
      @user = mock_model(User)
    end

    it "should expose the requested user as @user" do
      User.should_receive(:find).with("37").and_return(@user)
      get :show, :id => "37"
      assigns[:user].should equal(@user)
    end
    
    describe "with mime type of xml" do                                                                                                      

      it "should render the requested user as xml" do
        request.env["HTTP_ACCEPT"] = "application/xml"
        User.should_receive(:find).with("37").and_return(@user)
        @user.should_receive(:to_xml).and_return("generated XML")
        get :show, :id => "37"
        response.body.should == "generated XML"
      end

    end
  end
end
