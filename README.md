[![Gem Version](https://badge.fury.io/rb/capistrano3-pushr.svg)](https://badge.fury.io/rb/capistrano3-pushr)

# Pushr Capistrano 3.x integration

## Installation
Add this line to your application's Gemfile:

    gem 'capistrano3-pushr', require: false

You need to run `bundle install` to install the gem.

Or install it yourself as:

    $ gem install capistrano3-pushr

## Usage

In your `Capfile` add

```ruby
require 'capistrano/pushr'
```

You will get the following tasks
```sh
cap pushr:quiet                    # Quiet Pushr daemon (stop processing new stuff)
cap pushr:restart                  # Restart Pushr daemon
cap pushr:start                    # Start Pushr daemon
cap pushr:status                   # Pushr status
cap pushr:stop                     # Stop Pushr daemon
cap pushr:upload_certificates      # Upload certificates
cap pushr:version                  # Pushr version
```

Configurable options, shown with the default values:
```ruby
set :pushr_default_hooks, -> { true } # stop, start, restart the pushr daemon automatically

set :pushr_pid, -> { File.join shared_path, 'tmp', 'pids', 'pushr.pid' }                                    # location of the pushr pid file
set :pushr_configuration, -> { File.join shared_path, 'config', 'pushr.yml' }                               # location of the pushr config yml
set :pushr_env, -> { fetch(:rack_env, fetch(:rails_env, fetch(:stage))) }                                   # environment to run pushr in
set :pushr_certificates, -> { File.join 'config', 'push' }                                                  # location of the push certificates
set :pushr_redis_host, -> { fetch(:redis_host, 'localhost') }                                               # redis host for pushr
set :pushr_redis_port, -> { fetch(:redis_port, '6379') }                                                    # redis port for pushr
set :pushr_redis_namespace, -> { fetch(:redis_namespace, "pushr_#{fetch(:application)}_#{fetch(:stage)}") } # redis namespace for pushr
```
