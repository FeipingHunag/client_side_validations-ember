# ClientSideValidations-Ember #

[![Build Status](https://secure.travis-ci.org/dockyard/client_side_validations-ember.png?branch=master)](http://travis-ci.org/dockyard/client_side_validations-ember)
[![Dependency Status](https://gemnasium.com/dockyard/client_side_validations-ember.png?travis)](https://gemnasium.com/dockyard/client_side_validations-ember)
[![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/dockyard/client_side_validations-ember)

[Ember](https://github.com/rails/ember) plugin for [ClientSideValidations](https://github.com/bcardarella/client_side_validations)

## Installation ##

### Initializer ###

Run the install generator to get the initializer:

```bash
rails g client_side_validations-ember:install
```

This will copy `client_side_validations-ember.rb` to
`config/initializers`. You need to declare the Ember models you want to
have bootstrapped with server-side validations and how those models map to their server-side counterparts.

The hash should have keys that are string representations of the server-side models and values that are string
representations of the client-side models they map to.

```ruby
ClientSideValidations::Ember.configure do |config
  config.models = { 'User' => 'App.User', 'Profile' => 'App.Profile' }
end
```

### Asset Pipeline ###

In your Gemfile add the following:

```ruby
gem 'ember'
gem 'client_side_validations'
gem 'client_side_validations-ember'
```

Order matters here. `Ember` and `ClientSideValidations` need to be
required **before** `ClientSideValidations-Ember`.

[Follow the remaining installation instructions for ClientSideValidations](https://github.com/bcardarella/client_side_validations/README.markdown)

Add the following line to `app/assets/javascripts/application.js`

```javascript
//= require rails.validations.ember
```

Again, order matters. You should add this line after the require for
`rails.validations` as well as all of your Ember code.

If the asset pipeline is disabled the asset file will be copied
into `public/javascripts` when the `ClientSideValidations` install generator is run.

At any time you can copy the asset file into your project by running:

```
rails g client_side_validations:copy_assets
```

If the asset pipeline is disabled the asset file will be copied
into `public/javascripts`. Otherwise the asset file will be copied into
`app/assets/javascripts` (or whatever asset directory you have
defined)

## Authors ##

[Brian Cardarella](http://twitter.com/bcardarella)

[We are very thankful for the many contributors](https://github.com/dockyard/client_side_validations-ember/graphs/contributors)

## Versioning ##

This gem follows [Semantic Versioning](http://semver.org)

Major and minor version numbers will follow `Rails`'s major and
minor version numbers. For example,
`client_side_validations-ember-0.5.0` will be compatible up to 
`~> ember-0.5.0`

## Want to help? ##

Please do! We are always looking to improve this gem. Please see our
[Contribution Guidelines](https://github.com/dockyard/client_side_validations-ember/blob/master/CONTRIBUTING.md)
on how to properly submit issues and pull requests.

## Legal ##

[DockYard](http://dockyard.com), LLC &copy; 2012

[@dockyard](http://twitter.com/dockyard)

[Licensed under the MIT license](http://www.opensource.org/licenses/mit-license.php)
