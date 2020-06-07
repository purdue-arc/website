---
layout: archive
permalink: /projects/
title: Projects
---

{% for post in site.categories.projects %}
  {% include project-grid.html %}
{% endfor %}
