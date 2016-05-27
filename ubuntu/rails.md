# Rails

Get Rails for your local machine.

```
$ gem install rails
```

Make sure [Postgresql is Setup](https://github.com/olmesm/ubuntu-manual/blob/master/ubuntu/postgresql.md)

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

## Resources

* [Makers Academy Rails Tutorial](https://github.com/makersacademy/course/blob/master/rails/yelp_v1/1_getting_started.md)
