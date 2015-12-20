# RubotoCore

This project contains the common parts shared by [Ruboto](http://ruboto.org/)
apps.

If you want to save space for your Ruboto app, you can use this shared project
to access JRuby and the Ruby core classes and standard library.

If you **don't** want to use this shared app, just include JRuby in your own app
by generating it with the ```--with-jruby``` option or adding it later with the
```ruboto gen jruby``` command.

## New in version 1.0.6

* Updated to JRuby 1.7.23
* Updated to Ruboto 1.3.2
* Updated to ActiveRecord 4.2.5
* Updated to activerecord-jdbc-adapter 1.3.19
* Added jruby-openssl gem

## New in version 1.0.5

* Updated to JRuby 1.7.19
* Updated to Ruboto 1.3.0
* Updated to ActiveRecord 4.1.10
* Updated to activerecord-jdbc-adapter 1.3.15
* Added thread_safe gem

## New in version 1.0.2

* Fixed bug prohibiting installation on Android 2.3.
* Updated to Ruboto 1.1.0
* Updated packaged ActiveRecord to version 3.2.18

## New in version 1.0.1

* Updated to JRuby 1.7.12
* Updated to Ruboto 1.0.3
* Updated packaged ARJDBC to version 1.3.7
