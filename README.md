# Engage.is

Our new site.


## Development environment

You'll need [RVM](https://rvm.io/) to isolate your development environment.

Make sure you install `Ruby 2.0.0` on your [RVM](https://rvm.io/).

Then just checkout the code, configure dependencies and run the tests:

1. Clone the repository:

 `git clone git://github.com/engageis/engage.is.git`

2. Enter the repo directory to create the gemset:
 
 `cd engage.is`

3. Install [Bundler](http://gembundler.com/) into our [RVM](https://rvm.io/):

 `gem install bundler`

4. Install all dependencies from [Gemspec](http://docs.rubygems.org/read/chapter/20):

 `bundler install`
 
5. Configure the database conection

  `cp config/database.sample.yml config/database.yml`

6. Create the databases

  `bundle exec rake db:create`
 
7. Create the tables

  `bundle exec rake db:migrate`

8. Start the server

  `bundle exec rails s`


### Running tests

1. Go to app folder

	`cd engage.is`

2. Prepare the database
	
	`bundle exec rake db:test:prepare`

3. Run the rspec

	`rspec spec/`

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


# License

Copyright (c) 2013 Engage

Licensed under the MIT license (see LICENSE file)