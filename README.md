# RubotoCore

This project contains the common parts shared by [Ruboto](http://ruboto.org/)
apps.

If you want to save space for your Ruboto app, you can use this shared project
to access JRuby and the Ruby core classes and standard library.

If you **don't** want to use this shared app, just include JRuby in your own app
by generating it with the ```--with-jruby``` option or adding it later with the
```ruboto gen jruby``` command.

## New in version 1.0.1

* Updated to JRuby 1.7.12
* Updated to Ruboto 1.0.3
* Updated packaged ARJDBC to version 1.3.7
