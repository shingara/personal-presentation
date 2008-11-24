describe User do
  before :each do
    @user = users(:shingara)
  end

  it 'should have 2 products' do
    @user.should have(2).products 
    # @user.products.size == 2
  end

  it 'should have book products' do
    @user.products[0].should == products[:book]
  end
end

describe Product do
  before :each do
    @product = products(:book)
  end

  it 'should have user shingara' do
    @product.user.should == users(:shingara)
  end
end
