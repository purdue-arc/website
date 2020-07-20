---
layout: archive
permalink: /members/
title: Members
---
# Current Members
{% for member in site.data.members.current %}
  {% include member-grid.html %}
{% endfor %}

# Previous Members
{% for member in site.data.members.past %}
  {% include member-grid.html %}
{% endfor %}
