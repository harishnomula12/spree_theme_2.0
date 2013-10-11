
Then install the gem via Bundler:

```
$ bundle install
```

Finally, you need to run spree_fancy's installer:

```
$ bundle exec rails g spree_fancy:install
```
This copies over the migrations from the extension into your application, and sets up asset pipeline require statements for `spree_fancy`.

