---
layout: page
title: Meet the Team 
subtitle: Meet the Brookline Bots!
description: Brookline Bots Meet the Team
show_sidebar: false
hero_image: ../images/camps.png
down_breaks: true
[//]: # (hero_darken: true)
hero_height: is-medium
team: team
---

<main>
    <h1>Our Members</h1>
    <div>
        {% for member in site.data.team.team %}
        <div>
            <h5>{{member.name}} {{member.year}}</h5>
        </div>
        {% endfor %}
        <div id="button-wrapper">
            <a href="/alumni" class="button">View our alumni</a>
        </div>
    </div>
</main>



    


