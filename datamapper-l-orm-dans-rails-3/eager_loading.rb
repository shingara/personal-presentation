zoos = Zoo.all
zoos.each do |zoo|
  # SELECT 'id', 'name' FROM Zoos
  # 1,3,5,6,etc...
 
  zoo.exhibits.each do |exhibit|
    # Fait un requete par iteration :
    # Select 'name' from exhibits where zoo_id IN (1,3,5,6, etc...)
    puts "Zoo: #{zoo.name}, Exhibit: #{exhibit.name}"
  end
end
