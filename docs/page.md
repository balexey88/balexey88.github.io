---
title: Addons
permalink: /page/
layout: addons-list
---

# Sample page

<div>
  {% for addon in site.data.addons %}
    [{{ addon.name }}](/{{ addon.slug }}/)
  {% endfor %}
</div>
