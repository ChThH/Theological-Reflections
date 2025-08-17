---
layout: page
title: Reflections on Feasts
---

Please find various reflections I've written for feasts for Holy Resurrection Orthodox Church.

# Reflections

{% assign publish/Articles on Feasts = site.static_files | where: "extname", ".pdf" %}
{% for file in publish/Articles on Feasts %}
  {% if file.path contains "/pdfs/" %}
- [{{ file.name }}]({{ file.path | relative_url }}) 
  {% endif %}
{% endfor %}


