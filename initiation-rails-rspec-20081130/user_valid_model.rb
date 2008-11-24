describe User do
  describe 'create' do
    def user_valid(options)
      User.new({:name => 'Cyril Mougel',
               :email => 'cyril.mougel@gmail.com'}.merge(options))
    end

    it 'should user valid' do
      user_valid.should be_valid
    end

    it 'should presence of name' do
      user_valid(:name => nil).should_not be_valid
    end

    it 'should uniq name' do
      user_valid.save
      user_valid.should_not be_valid
    end

    it 'should not valid with bad email' do
      user_valid(:email => 'cool').should_not be_valid
    end
  end
end
