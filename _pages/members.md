---
layout: archive
permalink: /members/
title: Members
---
{% for member in site.data.members %}
  {% include member-grid.html %}
{% endfor %}

<!-- <div>
{% for member in site.data.members.past %}
  {% include member-grid.html %}
{% endfor %}
</div> -->
