---
layout: blog
title: "Блог о медитации без эзотерики"
description: "Читайте наши статьи о медитации и осознанности. Качайте приложение Практика и медитируйте вместе с нами."
permalink: /blog/
languages: ["ru"]
pagination: 
  enabled: true
  title: ':title'
---

<ul class="blog-posts flex">
  {% for post in paginator.posts %}
    {% include post-card.html %}
  {% endfor %}
</ul>

{% if paginator.total_pages > 1 %}
  <div
    role="navigation"
    aria-label="List"
    class="pagination flex">
    {% if paginator.previous_page %}
      <a
        href="{{ paginator.previous_page_path | relative_url }}"
        aria-label="Предыдущая страница"
        class="pagination-button">
        ← Назад
      </a>
    {% endif %}
    {% if paginator.next_page %}
      <a
        href="{{ paginator.next_page_path | relative_url }}"
        aria-label="Следующая страница"
        class="pagination-button">
        Дальше →
      </a>
    {% endif %}
  </div>
{% endif %}