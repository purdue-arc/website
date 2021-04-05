---
layout: archive
permalink: /members/
title: Members
---

<!-- # Current executives of the club -->
{% assign executives = site.data.members.current | where_exp: 'item',  'item.position' %}
{% for member in executives %}
  {% include member-grid.html %}
{% endfor %}

<!-- # Members sorted by year -->
{% assign members = site.data.members.current | where: 'position', nil | sort: 'year' %}
{% for member in members %}
  {% include member-grid.html %}
{% endfor %}

<!-- # Past members reverse sorted by year -->
{% assign past = site.data.members.past | sort: 'year' | reverse %}
{% for member in past %}
  {% include member-grid.html %}
{% endfor %}