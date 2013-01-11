!SLIDE
# Mongoid
## un ODM en ruby

!SLIDE
# Qu'est ce que Mongoid ?

## Un ODM Object Document Model
## Écrit en Ruby
## API comme ActiveRecord

!SLIDE
# Exemple simple

!SLIDE

```ruby
class User
  include Mongoid::Document
end
```

```shell
irb(main):001:0> user = User.new
=> #<User _id: 50ef292444fd99b031000001, _type: nil>

irb(main):002:0> user.id
=> "50ef292444fd99b031000001"
```
