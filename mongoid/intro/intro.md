!SLIDE
# Qu'est ce que Mongoid ? #

* Un ODM Object Document Model
* Écrit en Ruby
* API comme ActiveRecord

!SLIDE header
# Exemple simple #

!SLIDE
```ruby
class User
  include Mongoid::Document
end
```

!SLIDE
```bash
> user = User.new
=> #<User _id: 50f07c2444fd9947a7000001, _type: nil>
```

!SLIDE header

# Definition des champs #


!SLIDE

```ruby
class User
  include Mongoid::Document

  field :first_name
  field :last_name
end
```

!SLIDE
```bash
> user = User.new(:first_name => 123, :last_name => "Mougel")
=> #<User _id: 50f07c4c44fd9947a7000003, _type: nil, first_name: 123, last_name: "Mougel">

> user.first_name
=> 123

> user.last_name
=> "Mougel"
```

!SLIDE header

# Gestion de Coercion #

!SLIDE

```ruby
class User
  include Mongoid::Document

  field :first_name, :type => String
  field :last_name, :type => String
end
```

!SLIDE

```bash
> user = User.new(:first_name => 123, :last_name => true)
=> #<User _id: 50f07c4c44fd9947a7000003, _type: nil, first_name: "123", last_name: "true">

> user.first_name
=> "123"

> user.last_name
=> "true"
```

!SLIDE header

# Gestion d'une valeur par défaut #

!SLIDE

```ruby
class User
  include Mongoid::Document

  field :first_name, :type => String
  field :last_name, :type => String
  field :location, :type => String, :default => "Nantes"
end
```

!SLIDE

```bash
> user = User.new
=> #<User _id: 50f07cbc44fd9947a7000004, _type: nil, first_name: nil, last_name: nil, location: "Nantes">

> user.first_name
=> nil

> user.location
=> "Nantes"
```

!SLIDE header

# Muliple Type de base #

!SLIDE

* BigDecimal
* Boolean
* Integer
* String
* Symbol
* Float

!SLIDE

* Date
* DateTime
* Time
* Array
* Hash
