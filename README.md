# [WilmerLab Website](https://wilmerlab.github.io/)

Responsible for maintaining source data for the WilmerLab website. The website
is hosted by GitHub pages, using Jekyll to manage the static content.

# Table of Contents

- [About](#about)
  - [How Does It Work](#how-does-it-work)
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
How to make these updates is described further in
[Contributing](#contributing).

### How Does It Work? <a name="how-does-it-work"></a>

The site is hosted by GitHub pages. GitHub pages is [fully integrated with
Jekyll](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/about-github-pages-and-jekyll).
Jekyll takes markdown files and any images we provide and ''transpiles'' them
into HTML documents that GitHub pages can serve (these are the files that are
served when you navigate to https://wilmerlab.github.io). Since Jekyll is
integrated with GitHub pages, for us this means we don't have to actually worry
about building the site (i.e., converting the raw markdown into HTML) prior to
pushing to the repository; instead, whenever new, raw content in the form of
markdown files and images is pushed to the repository, a new build is triggered
and the (live) site gets updated with any new files. However, we can still test
the builds and serve the site locally prior to pushing content.

## Contributing <a name="contributing"></a>

Have something to add to the website? Something to tweak? Follow these steps:

1. Create a GitHub account.
2. Fork this repository. This will give you your own personal copy of the
   repository to which you can make modifications.
  - If you have already forked the repository, no need to fork it again. Under
    your forked copy of the repository, click on ``Fetch upstream`` in the
GitHub UI (this should appear in the top right, in the box underneath the
``Code`` button).
3. Make your changes locally.
  - If this is your first time forking the repository, you will need to clone
    it (`$ git clone https://github.com/<your username>/wilmerlab.github.io`).
  - If you already have a fork that has been fast-forwarded to include any
    changes that others have pushed since the last time you made changes, be
sure to pull in any new changes (`$ git pull origin`)
4. (Optional, but recommended) Test your changes by serving the website locally
   on your computer. See [Docker](#docker) for an example of how to do this
using Docker.
5. Push your changes to GitHub. This does not mean pushing your changes to the
   lab's website. Instead this will simply update your forked version of the
repository that exists on GitHub.
6. Submit a pull request (PR) to have your changes merged to the website's
   master branch. To do this, click `Contribute`-->`Open pull request`
(`Contribute` is right next to `Fetch upstream` and below the `Code` button).
Opening a PR lets daniel or Brian review your requested changes. If the
changes look good, they can be merged directly to the master branch of the
WilmerLab website (where they will then be published). Otherwise, further
tweaks may be requested.

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

daniel has ensured that the lab's desktop has Docker and GNU Make installed
system wide. So that can be an easy place to test your website updates.
However, by installing Docker on your system you will not have to worry about
installing Ruby, Jekyll, and any dependencies on your own computer. Serving the
site locally will then be as easy as executing `make serve` (or even just
`make`); if you do not have [GNU Make](https://www.gnu.org/software/make/) you
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

If you do not have GNU Make but you do have Docker installed, you can execute
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
