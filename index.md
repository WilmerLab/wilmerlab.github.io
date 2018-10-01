---
layout: single
author_profile: true
title: The Hypothetical Materials Lab
num_posts: 8
---
![group-photo](/assets/img/people/GroupPhoto_May2018.jpg)

**Welcome to the Wilmer Lab!**
We explore the properties of hypothetical materials using computer simulations.
There are openings for students and full-time software developers.
Please contact Prof. Wilmer for details.

<h2 class="archive__subtitle">{{ site.data.ui-text[site.locale].recent_posts | default: "Recent Posts" }}</h2>

<div class="grid__wrapper">
  {% assign num_posts = 0 %}
  {% for post in site.posts %}
    {% if num_posts < page.num_posts %}
      {% include archive-single-date.html type="grid" %}
    {% endif %}
    {% assign num_posts = num_posts | plus: 1 %}
  {% endfor %}
</div>
