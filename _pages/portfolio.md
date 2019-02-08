---
layout: archive
permalink: /portfolio/
title: Portfolio
---

<ul>
{% for project in site.categories.projects %}
  <ul> {% project.title %} </ul>
  {% endfor %}
</ul>