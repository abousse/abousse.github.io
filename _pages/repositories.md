---
layout: page
permalink: /repositories/
title: Repositories
description: 
nav: true
nav_order: 4
---

{% if site.data.repositories.github_users %}

## GitHub users

<div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
  {% for user in site.data.repositories.github_users %}
    {% include repository/repo_user.liquid username=user %}
  {% endfor %}
</div>

---

{% if site.repo_trophies.enabled %}
{% for user in site.data.repositories.github_users %}
{% if site.data.repositories.github_users.size > 1 %}

  <h4>{{ user }}</h4>
  {% endif %}
  <div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
  {% include repository/repo_trophies.liquid username=user %}
  </div>

---

{% endfor %}
{% endif %}
{% endif %}

{% if site.data.repositories.github_repos %}


## Selected repositories

<style>
  .repo-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(320px, 1fr));
    gap: 1rem;
    margin-top: 1rem;
  }
  .repo-grid a {
    display: block;
  }
  .repo-grid img {
    width: 100%;
    height: auto;
    border-radius: 8px;
    border: 1px solid rgba(128, 128, 128, 0.25);
    transition: transform 0.15s ease, box-shadow 0.15s ease;
  }
  .repo-grid a:hover img {
    transform: translateY(-2px);
    box-shadow: 0 4px 14px rgba(0, 0, 0, 0.18);
  }
</style>

<div class="repo-grid">
  {% for repo in site.data.repositories.github_repos %}
    <a href="https://github.com/{{ repo }}" title="{{ repo }}">
      <img src="https://opengraph.githubassets.com/1/{{ repo }}" alt="{{ repo }}" loading="lazy" />
    </a>
  {% endfor %}
</div>

{% comment %}
## GitHub Repositories
<div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
  {% for repo in site.data.repositories.github_repos %}
    {% include repository/repo.liquid repository=repo %}
  {% endfor %}
</div>
{% endcomment %}


{% endif %}




