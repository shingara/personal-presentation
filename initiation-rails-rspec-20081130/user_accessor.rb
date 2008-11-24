describe User do

  before(:each) do
    @user = User.first
  end

  it 'should access to name' do
    @user.name.should_not be_nil
  end

end
