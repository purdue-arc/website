---
layout: archive
permalink: /members/
title: Members
---
{% for member in site.data.members.executives %}
  {% include member-grid.html %}
{% endfor %}
{% for member in site.data.members.current %}
  {% include member-grid.html %}
{% endfor %}

<!-- <div>
{% for member in site.data.members.past %}
  {% include member-grid.html %}
{% endfor %}
</div> -->
