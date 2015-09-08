# Travis CI Nginx Test

A basic template for getting Nginx running on Travis CI's container based infrastructure.

## What is the purpose of this repo?

Do you need to run some automated tests that rely on Nginx on Travis CI? Do you want those tests to run on the Docker
[container-based infrastructure](http://blog.travis-ci.com/2014-12-17-faster-builds-with-container-based-infrastructure/)?
Are you pulling your hair out trying to get this all to work? Then this repo is for you.

Travis CI does not come with Nginx pre-installed so the install needs to be scripted. Since Travis CI's container-based
infrastructure doesn't allow sudo privileges this installation is non-trivial. Hopefully, by providing this repo
I can save someone some hassle trying to get Nginx set up for their project.

## How the install works.

All of the installation files are located in the [/travis]() directory. The main installation is done through the
[install-nginx.sh]() bash script. It's a short script so it should be relatively easy to follow. The other scripts are
basic Nginx and php-fpm configuration templates. The basic install process goes as follows:

1. Install Nginx using the [apt addon]() via entries in the [.travis.yml]() file.
2. Collect some useful information for the install into environment variables.
3. Copy the configuration templates to a new directory while replacing placeholders with environment variables.
4. Start php-fpm and Nginx with our custom configuration file instead of the default.

There is also a quick curl to the web server to ensure that everything works correctly.

## TODO!

Unfortunately, the hhvm install does not work. Part of the problem is I think hhvm requires sudo case closed.
That being said I did a fair amount of experimenting with the sudo VM and couldn't get hhvm to work there either.
I'm hoping some kind expert can offer some advice in the near future.

## See also

* [Running Nginx as a Non-Root User](https://www.exratione.com/2014/03/running-nginx-as-a-non-root-user/)