# README

A small Rails app for managing a list of London boroughs.

To run this app locally, `git clone` this repository and run these commands in the root directory:
```
bundle install
bundle exec rails s
```

Then open [this link](http://localhost:3000/) to view the application in your web browser.

Run this command to undo all changes and restore the application data to an accurate list of London boroughs:
```
rails db:reset
```

Run this command to run the app's test suite:
```
bundle exec rspec
```
