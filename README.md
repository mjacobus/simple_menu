# SimpleMenu

A simple menu builder

[![Build Status](https://travis-ci.org/mjacobus/simple_menu.png?branch=master)](https://travis-ci.org/mjacobus/simple_menu)
[![Coverage Status](https://coveralls.io/repos/mjacobus/simple_menu/badge.png)](https://coveralls.io/r/mjacobus/simple_menu)
[![Code Climate](https://codeclimate.com/github/mjacobus/simple_menu.png)](https://codeclimate.com/github/mjacobus/simple_menu)
[![Dependency Status](https://gemnasium.com/mjacobus/simple_menu.png)](https://gemnasium.com/mjacobus/simple_menu)
[![Gem Version](https://badge.fury.io/rb/simple_menu.png)](http://badge.fury.io/rb/simple_menu)

## Instalation

Add this line to your application's Gemfile:

```ruby
gem 'simple_menu'
```

And then execute:

    $ bundle


Run bundle install

## Usage

## Layout (or even view)
```erb
<%= simple_menu.add({
  :products => ["Products", "/products"],
  :services => ["Services", "/services"],
}) %>
```

##  View

```erb
# app/views/products/show.html.erb
<% simple_menu.active = :products %>
```


renders

```erb
<ul>
  <li><a href="/products">Products</a></li>
  <li><a href="/services">Services</a></li>
</ul>
```

## Aditional Menus

```erb
<% simple_menu('sidebar').active = :all %>

<%= simple_menu('sidebar').add({
  :all => ["All", "/products"],
  :most_viewed => ["Most Viewed", "/products/most-viewed"],
}) %>
```

## Author

- [Marcelo Jacobus](https://github.com/mjacobus)


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
**Do not forget to write tests**
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

