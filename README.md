# [WilmerLab Website](https://wilmerlab.github.io/)

## Installation instructions (macOS)

Here is what I did on my Mac Book Pro running High Sierra and Brew. Jekyll is a ruby application. Gem is basically a ruby version of pip.

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
