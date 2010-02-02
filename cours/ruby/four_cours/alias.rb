class Person
  def login
    puts 'my login'
  end
  alias :name :login
end
