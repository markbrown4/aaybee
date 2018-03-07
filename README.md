# Aayebee

## Mac updates

* Software Updates
* Download Xcode from the App Store

Fire up Terminal 🔥

```bash
xcode-select --install
```

## Git

* [Install / configure git](https://help.github.com/articles/set-up-git/)
* [Add SSH keys to Github](https://help.github.com/articles/connecting-to-github-with-ssh/)

```bash
git clone git@github.com:markbrown4/aaybee.git
cd aaybee
```

## Install

Install [Homebrew](https://brew.sh/) if you don't have it.

```bash
brew install rbenv
brew install postgresql
brew services start postgresql
brew install imagemagick

rbenv init
rbenv install 2.4.1
rbenv global 2.4.1
```

`ruby -v` should output "ruby 2.4.1"

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
bin/rails db:migrate
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
