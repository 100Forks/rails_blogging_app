Rails Blogging App
==================

by <a href="http://duanemoody.io" target="_blank">Duane M. Moody</a>.

Rails Blogging App will provide you a simple yet elegant blogging solution.

- You will be able to post your deepest thoughts in a blog entry with a title and date.
- You will be able to see all your blog posts listed by title and have them link to each post so that you can revisit past entries.
- You will be able to update or delete any of your posts so that you can revise your thoughts later.

Installation
------------

Install Rails Blogging App by first cloning the repository.
```
$ git clone http://github.com/dmmoody/rails_blogging_app.git
```

Install all of the required gems:
```
$ bundle install
```

Database Setup
--------------

This app uses PostreSQL.

Run the following in the command line:
```
$ rake db:create
$ rake db:migrate
$ rake db:test:prepare
```

Running the app
---------------

To run the app, ```\cd``` into the root folder for the app and start the webserver:
```
$ rails server
```

In your web browser, go to http://localhost:3000

Contribute
----------

- Issue Tracker: github.com/dmmoody/rails_blogging_app/issues
- Source Code: github.com/dmmoody/rails_blogging_app

Support
-------

If you are having issues, please let me know at: dmmoody@gmail.com

Bug reports
-----------

If you discover any bugs, feel free to create an issue on GitHub. Please add as much information as possible to help me fixing the possible bug. I also encourage you to help even more by forking and sending me a pull request.

https://github.com/dmmoody/rails_blogging_app/issues

License
-------

MIT License. Copyright 2014 Duane M. Moody | <a href="http://moodyco.de">MoodyCode</a>
