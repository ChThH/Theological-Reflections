---
layout: page
title: Reflections on Feasts
---

Please find various reflections I've written for feasts for Holy Resurrection Orthodox Church.

## Reflections

{% assign pdf_files = site.static_files | where: "extname", ".pdf" %}
{% for file in pdf_files %}
  {% if file.path contains "/publish/Articles-on-Feasts/" %}
- [{{ file.name }}]({{ file.path | relative_url }}) 
  {% endif %}
{% endfor %}


