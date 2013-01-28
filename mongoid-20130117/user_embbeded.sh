> user = User.new
> user.comments = [ Comment.new ]
> user.save

> user
=> #<User _id: 50f07c2444fd9947a7000001, _type: nil>

{
  '_id':  50f07c2444fd9947a7000001,
  'comments': [{
    '_id': 50f07c2444fd9947a7000002
  }]
}
