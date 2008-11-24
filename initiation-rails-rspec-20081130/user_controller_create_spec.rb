describe UsersController do 
  describe "responding to POST create" do

    describe "with valid params" do

      it "should create user" do
        assert_difference 'User.count' do
          post :create, :user => {:name => 'Jean-francois', 
                                  :email => 'jf@rubyfrance.org'}
          response.should redirect_to(
                              user_url(User.find_by_name('Jean-francois')))
       end
      end                                                                                                                                    
      
    end
    
    describe "with invalid params" do                                                                                                        
      
      it "should not create user" do                                                                        
        assert_no_difference 'User.count' do
          post :create, :user => {:name => 'Jean-francois', 
                                  :email => 'jf@rubyfrance'}
          response.should render_template('new') 
        end
      end
    end 
        
  end 
end
