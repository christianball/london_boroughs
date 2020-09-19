# README

A small Rails app for managing a list of London boroughs.

Live at: [london-boroughs.herokuapp.com](https://london-boroughs.herokuapp.com/)

You will need PostgreSQL installed to run this app.

To run this app locally, `git clone` this repository and run these commands in the root directory:
```
bundle install
pg_ctl -D /usr/local/var/postgres start
bin/setup
bundle exec rails s
```

Then open [this link](http://localhost:3000/) to view the application in your web browser.

When you've finished, hit `ctrl-c` to stop the app, then run the following command to stop the PostgreSQL sever:
```
pg_ctl -D /usr/local/var/postgres stop
```

To undo all changes and restore the application data to an accurate list of London boroughs, stop the app and, with the PostgreSQL server still running, run this command:
```
rails db:reset
```

To run the app's test suite, with the PostgreSQL server still running, run this command:
```
bundle exec rspec
```
