# [WilmerLab Website](https://wilmerlab.github.io/)

## Process

1. Fork the repo
2. Clone the repo `$ git clone https://github.com/<profile>/wilmerlab.github.io.git`
3. Create a branch `$ git checkout -b <descriptive-branch-name>`
4. Make and test changes to website (can run the website locally and see
   changes in real time)
5. Stage changes `$ git add <files added and changed>`
6. Commit changes `$ git commit -m "Descriptive commit message"`
7. Push changes `$ git push origin`. This will most likely tell you that
   upstream branch was not recognized, but it will give you the command to
execute to set the branch in the remote.
8. In GitHub, open a pull request in the WilmerLab/wilmerlab.github.io repo
   (*not* your fork of the repo).

## Installation instructions (macOS)

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
