---
layout: archive
title:  "News"
permalink: /news/
author_profile: false
date:   2017-12-15
categories: pages
read_time: false
---

<div class="grid__wrapper">
  {% for post in site.posts %}
    {% include archive-single-date.html type="grid" %}
  {% endfor %}
</div>
