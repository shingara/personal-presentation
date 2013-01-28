> user = User.new(:first_name => 123, :last_name => true)
=> #<User _id: 50f07c4c44fd9947a7000003, _type: nil, first_name: "123", last_name: "true">

> user.first_name
=> "123"

> user.last_name
=> "true"
