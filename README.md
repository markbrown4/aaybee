# Aayebee

## Mac updates

- Software Updates
- Download Xcode from the App Store

Fire up Terminal 🔥

```bash
xcode-select --install
```

## Install

Install [Homebrew](https://brew.sh/) if you don't have it.

```bash
brew install rbenv
brew install postgresql
brew install imagemagick

rbenv init
rbenv install 2.4.1
```

## Dependencies

You'll use Bundler for installing Gems.

```bash
gem install bundler
bundle install
```

## Create the database

This will create the db with [seed data](db/seeds.rb)

```bash
bin/rails db:create
bin/rails db:seed
```

## Start up the server

```bash
bin/rails server
```

open http://localhost:3000/


## Other useful rails commands

```bash
bin/rails routes      # show which URL's map to controllers / actions
bin/rails console     # Interact with your models / db - try "User.all"
bin/rails db:migrate  # Run db migrations to change the db schema
```
