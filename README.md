Spree S3
========

This is an extension for Spree, allowing the image uploads to Amazon S3.

The major constraint on Heroku is that we can't write files to disk, so this extension disables all disk caching and changes Spree to store on Amazon S3. It should help if you prefer setting up on Heroku with config vars or if you needs to config more S3 variables that Spree does (when Spree >= 1.1.x), this extension is still relevant.

Requirements
------------

* An Amazon S3 account with a bucket.
* Spree :)

Installation and configuration
-------------------------------

Add this to your project Gemfile:

    gem 'spree_s3', :git => 'git://github.com/jnettome/spree-s3.git'

Install the new gems with bundler:

    $ bundle install

Specify the S3 credentials by two ways:

Create Heroku config var for specific environment
    
    $ heroku config:add S3_KEY='your_access_key'
    $ heroku config:add S3_SECRET='secret_access_secret'
    $ heroku config:add S3_BUCKET='your_app_bucket'
    $ heroku config:add S3_URL='url_strategy'

OR

Configure vars in your "spree_s3.yml" (eg: config/spree_s3.yml) like this:

    production:
      access_key: 'your_access_key'
      access_secret: 'your_secret_key'
      bucket: 'your_s3_bucket'
      url: 'url_strategy'
    
    development:
      access_key: 'your_access_key'
      access_secret: 'your_secret_key'
      bucket: 'your_s3_bucket'
      url: 'url_strategy'

Congratulations! This is it.

__Please note__ that it will work with images that you already uploaded to S3. This gem doesn't (and i think that will never gonna do) migrate any existent images.


What I can configure
--------------------

    access_key = ''
    access_secret = ''
    bucket = ''
    url = ''

Troubleshooting
---------------

This extension has been tested with Spree 1.2 and Rails 3.2.8. If you have problems using the extension with a newer version of Spree, it could be due to Spree's gem dependencies having changed.

When it happen, please consider opening an issue.


Contributing
------------

Feel free to contribute here, coding or testing it in another versions of Spree and Rails.

Any help/suggestion is welcome!

Copyright (c) 2012 João Netto, released under the New BSD License
Inspired in [joneslee85/spree-heroku](https://github.com/joneslee85/spree-heroku) and in this [issue](https://github.com/spree/spree/issues/1840)