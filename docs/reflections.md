---
layout: page
title: Reflections on Feasts
---

Please find various reflections I've written for feasts for Holy Resurrection Orthodox Church.

## Reflections

---
layout: page
title: Articles on Feasts
---

# Articles on Feasts

| Article | Year | Format |
|---------|------|--------|
{% assign pdf_files = site.static_files | where: "extname", ".pdf" %}
{% for file in pdf_files %}
  {% if file.path contains "/publish/Articles-on-Feasts/" %}
    {% assign filename_parts = file.basename | split: "_" %}
    {% assign year = filename_parts | last %}
    {% assign title_part = filename_parts | slice: 0, -1 | join: "_" %}
    {% assign md_file = site.pages | where_exp: "page", "page.name contains title_part" | first %}
    {% if md_file %}
| [{{ title_part | replace: "-", " " | replace: "_", " " | capitalize }}]({{ md_file.url | relative_url }}) | {{ year }} | [Web]({{ md_file.url | relative_url }}) \| [PDF]({{ file.path | relative_url }}) |
    {% else %}
| {{ title_part | replace: "-", " " | replace: "_", " " | capitalize }} | {{ year }} | [PDF Only]({{ file.path | relative_url }}) |
    {% endif %}
  {% endif %}
{% endfor %}

