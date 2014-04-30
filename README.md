# MetaMagic

[![Build Status](https://travis-ci.org/johnotander/meta_magic.svg?branch=master)](https://travis-ci.org/johnotander/meta_magic)

Some useful methods for object-agnostic views, controllers, and models.

## Installation

Add this line to your application's Gemfile:

    gem 'meta_magic'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install meta_magic

## Usage

### The Helpers

Sometimes it can be a pain when you need to link to certain actions when you don't necessarily know what type of object you have in a Rails view. The `object_path` and `objects_path` methods make this easy.

First, include helper in your `helpers/application_helper.rb` to gain access to the methods in your view:

```ruby
module ApplicationHelper
  include MetaMagic::Helper
end
```

Then, link away:

```html+erb
<%= link_to object.display_name, object_path(@user_object) %>
<!-- <a href="/users/:id">John Doe</a> -->

<%= link_to 'See Activity', object_path(product_object, action: :activities) %>
<!-- <a href="/products/:id/activities">See Activity</a> -->

<%= link_to 'See All', objects_path(@book) %>
<!-- <a href="/books">See All</a> -->
```

### The Controllers

_Coming soon._

## Contributing

1. Fork it ( http://github.com/johnotander/meta_magic/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
