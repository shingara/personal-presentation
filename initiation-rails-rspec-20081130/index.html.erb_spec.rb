describe "/users/index.html.erb" do
  include UsersHelper

  before(:each) do
    assigns[:users] = User.all
    #There are 2 users in fixtures
  end

  it "should render list of users" do
    render "/users/index.html.erb"
    response.should have_tag("tr>td", User.first.name)
    response.should have_tag("tr>td", User.first.email)
  end
end
