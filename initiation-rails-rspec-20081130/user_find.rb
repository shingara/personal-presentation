describe User do

  it 'should find by name' do
    User.find_by_name('Cyril Mougel').should == users(:shingara)
  end

  it 'should find by email' do
    User.find_by_email('cyril.mougel@gmail.com').should == users(:shingara)
  end

  it 'should find by name and email' do
    User.find_by_name_and_email('Cyril Mougel', 
                                'cyril.mougel@gmail.com').should == users(:shingara)
  end

  it 'should find all' do
    User.all.should == [users(:shingara), users(:underflow_)]
  end
end
