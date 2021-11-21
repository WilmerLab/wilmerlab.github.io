# [WilmerLab Website](https://wilmerlab.github.io/)

Responsible for maintaining source data for the WilmerLab website. The website
is hosted by GitHub pages, using Jekyll to manage the static content.

# Table of Contents

- [About](#about)
- [Quickstart](#quickstart)
- [Contributing](#contributing)
- [Installation](#installation)
  - [Docker](#docker)
  - [macOS](#macos)
- [Questions?](#questions)

## About <a name="about"></a>

The lab maintains a static website at
[wilmerlab.github.io](https://wilmerlab.github.io/). The site contains recent
news (business competition victories, publications, other exciting
accomplishments), information on current research, coding tutorials, Chris's
teaching endeavors, etc. Whenever ''news'' happens to one of the lab members,
they are responsible for adding relevant content, including copy and images.
How to make these updates is described further in [Quickstart](#quickstart) and
[Contributing](#contributing).

## Quickstart <a name="quickstart"></a>

## Contributing <a name="contributing"></a>

## Installation <a name="installation"></a>

For most lab members, installing Ruby and Jekyll (a Ruby-based content
management system for static websites) isn't strictly necessary. However, when
submitting a pull request to add content to the site, it can be useful to test
the changes locally before having daniel review the requested modifications;
this can ensure your changes get published sooner, since you can catch mistakes
before submitting the pull request. To test your updates locally, you will need
to have Ruby and Jekyll installed.

There are two primary routes to install the necessary software. The first and
suggested route is with [Docker](https://www.docker.com/). However, we also
have installation instructions for installing ''bare metal'' on macOS.

### Docker <a name="docker"></a>

daniel has ensured that the lab's desktop has Docker and GNU make installed
system wide. So that can be an easy place to test your website updates.
However, by installing Docker on your system, you will not have to worry about
installing Ruby, Jekyll, and any dependencies on your own compute. Serving the
site locally will then be as easy as executing `make serve` (or even just
`make`); if you do not have [GNU make](https://www.gnu.org/software/make/) you
can install it, although it is not a necessary depedency, it just makes running
the website easier.

Once you have Docker installed, navigate to the directory in which you have
this repository cloned and issue
```sh
$ make serve
```
This will read and execute the contents of the Makefile under the `serve`
directive. The command listed there is to run a Docker container with Ruby and
Jekyll preconfigured and then to serve the website on your machine's
`localhost` on port `4000`.

If you do not have GNU make but you do have Docker installed, you can execute
the `serve` directive from the Makefile ''manually''. The Makefile lists a
_shell_ command:
```sh
$ docker run --rm -v "$PWD:/srv/jekyll" -p 4000:4000 jekyll/jekyll:4 jekyll serve
```
If you do this, make sure you run the command verbatim. Especially since the
variable `CURDIR` is a Makefile-specific variable that expands to the current
working directory; your shell most likely does not have this variable defined
as `CURDIR`, but instead has this defined as `PWD`.

### macOS <a name="macos"></a>

Here is what I did on my Mac Book Pro running High Sierra and Brew. Jekyll is a
ruby application. Gem is basically a ruby version of pip.

```
brew install ruby
brew update ruby
```

after cloning from github into a new window
```
cd ~/workspace/wilmerlab.github.io
gem install bundler
bundle install
bundle exec jekyll serve
```

## Questions? <a name="questions"></a>

Have questions or comments? Contact [daniel](https://github.com/daniel-salmon)
directly.
