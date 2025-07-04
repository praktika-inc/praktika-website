---
layout: default
---

<div class="hero-section flex">
  <div class="hero-image"><img
      src="/assets/images/{% t hero.img %}"
      width="350"
      alt=""
      class="phone-img"></div>
  <div class="hero-cta flex">
    <h1>{% t hero.h1 %}</h1>
    <ul class="hero-list">
      <li>{% t hero.i1 %}</li>
      <li>{% t hero.i2 %}</li>
      <li>{% t hero.i3 %}</li>
      <li>{% t hero.i4 %}</li>
    </ul>
    {% include store-buttons.html %}
  </div>
</div>