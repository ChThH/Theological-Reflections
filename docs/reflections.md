---
layout: page
title: Reflections on Feasts
---
# Articles on Feasts

Please find various reflections I've written for feasts for Holy Resurrection Orthodox Church.

## Reflections

| Article | Year | Format |
|---------|------|--------|
{%- assign pdf_files = site.static_files | where: "extname", ".pdf" | sort_natural: "basename" -%}
{%- for file in pdf_files -%}
{%- if file.path contains "/publish/Articles-on-Feasts/" -%}
{%- assign filename_parts = file.basename | split: "_" -%}
{%- assign year = filename_parts | last -%}
{%- assign num_parts = filename_parts | size | minus: 1 -%}
{%- assign title_parts = filename_parts | slice: 0, num_parts -%}
{%- assign title_part = title_parts | join: "_" -%}
{%- assign display_title = title_part | replace: "-", " " | replace: "_", " " -%}
{%- assign words = display_title | split: " " -%}
{%- assign capitalized_words = "" -%}
{%- for word in words -%}
  {%- assign capitalized_word = word | capitalize -%}
  {%- if forloop.first -%}
    {%- assign capitalized_words = capitalized_word -%}
  {%- else -%}
    {%- assign capitalized_words = capitalized_words | append: " " | append: capitalized_word -%}
  {%- endif -%}
{%- endfor -%}
{%- assign md_file = site.static_files | where: "extname", ".md" | where_exp: "mdfile", "mdfile.basename == file.basename" | first -%}
{%- if md_file %}
| [{{ capitalized_words }}]({{ md_file.path | relative_url }}) | {{ year }} | [Web]({{ md_file.path | relative_url }}) \| [PDF]({{ file.path | relative_url }}) |
{%- else %}
| {{ capitalized_words }} | {{ year }} | [PDF Only]({{ file.path | relative_url }}) |
{%- endif -%}
{%- endif -%}
{%- endfor %}