---
layout: splash
title:  "Contributing"
permalink: /contributing/
date:   2018-01-17
categories: pages
---
<p> </p>

Editing WilmerLab Website
=========================

## 1. Fork the wilmerlab.github.io repository

- Go to [https://github.com/WilmerLab/wilmerlab.github.io](https://github.com/WilmerLab/wilmerlab.github.io).
- Fork the repository by clicking the fork icon on the top right.
- Clone the repository:
```
git clone https://github.com/<username>/wilmerlab.github.io.git
```

## 2. Make changes in your local repository

### Add a new post (news)

- Create a markdown (.md) file with appropriate date and name and add it to `_posts` folder (see the previous ones for example).
- Add an image about the post to the `assets/img/posts` folder. The recommended image size is `400x200`. Make sure the image has `2:1` ratio
  so the news grid looks nice.
- Modify the content of the markdown file (add text, other images, links etc.) and add the link to your image to yaml front matter (header/teaser part at the top of the file separated with 3 dashes).

### Add a new publication

- Open `publications.md` markdown file under `_pages` directory.
- Add a new entry in the yaml front header as follows:

```yaml
year_lastname_journal:
  - image_path: /assets/img/publications/year_lastname_journal.png
    alt: "year_lastname_journal"
    title: "Publication Title"
    excerpt: "**No.** [Authors, Publication Title, *Journal Name*, Issue, Pages **(Year)**.](/link/to/publication)"
```

- Add an image about describing the publication (e.g. TOC figure) to the `assets/img/publications` folder. The recommended image size is `800x400 px`. Make sure the image has `2:1` ratio to be consistent.
- Go to the end of the yaml front header and add your publication to the page under appropriate year and order.

### Edit page contents

- Go to the markdown file of the page you want to edit (for example `people.md` if you want to edit personal information).
- Make changes you like.

## 3. See your changes locally (optional)
Install the theme. [See instructions here](https://mmistakes.github.io/minimal-mistakes/docs/installation/).
Run command 'bundle exec jekyll serve --livereload' to see the website

## 4. Push your changes and create a pull request
When you are done making changes commit and push those changes to your fork of the repository.
Then create a pull request to the wilmerlab respository stating your changes.
