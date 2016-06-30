# Rails

Get Rails for your local machine.

```
$ gem install rails
```

Make sure [Postgresql is Setup](../postgresql.md)

To start a new rails project:

```
$ rails new «APP_NAME» -d postgresql -T
```

## Setup Rspec in Rails

Add to bottom of gemfile

```
group :test do
  gem 'rspec-rails'
  gem 'capybara'
end
```

Run bundler and then initialize rspec.

```
$ bundle
$ bin/rails generate rspec:install
```

Add the following require statement below the other require statements in spec/rails_helper.rb

```
require 'capybara/rails'
```

## Generating MVC

```
# Generate Controller
$ bin/rails g controller OBJECT_NAME(PLURAL)

# Generate Model
$ bin/rails g model OBJECT_NAME(SINGULAR) OBJECT_PROPERTY_1:string OBJECT_PROPERTY_2:text
```

## Form Helper

```
<!-- ERB -->

<%= form_for @OBJECT_NAME do |f| %>
  <%= f.label :OBJECT_PROPERTY_1 %>
  <%= f.text_field :OBJECT_PROPERTY_1 %>
  <%= f.label :OBJECT_PROPERTY_2 %>
  <%= f.text_area :OBJECT_PROPERTY_2, size: "60x12" %>
  <%= f.submit "Create" %>
<% end %>
```

## Link Helper

```
<!-- ERB -->

<%= link_to "Add an OBJECT", new_OBJECT_path %>
```

## Resources

* [Makers Academy Rails Tutorial](https://github.com/makersacademy/course/blob/master/rails/yelp_v1/1_getting_started.md)
* [Rails Form Helpers](http://guides.rubyonrails.org/form_helpers.html)
* [Rails Link Helpers](http://apidock.com/rails/ActionView/Helpers/UrlHelper/link_to)
