---
layout: archive
permalink: /members/
title: Members
---
{% for member in site.data.members.current %}
  {% include member-grid.html %}
{% endfor %}

# Past Members
{% for member in site.data.members.past %}
  {% include member-grid.html %}
{% endfor %}
