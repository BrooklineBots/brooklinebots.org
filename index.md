---
title: Brookline Bots
subtitle: FTC Team 17218
layout: page
callouts: home_callouts
show_sidebar: false
[//]: # (If true, then post page appears)
hero_image: images/BackOfJersey.jpg
hero_darken: true
hero_height: is-large
#mobile_black_text: true
---
<link rel="stylesheet" href="/assets/css/buttonHover.css">

<style>
    .zoom {
        /*  padding: 3.125em;*/
        /*  background-color: green;*/
          transition: transform .2s; /* Animation */
        /*  width: 200px;*/
        /*  height: 200px;*/
          margin: 0 auto;
    }
    @import "TextAnimationEffect.scss";
    
    .zoom:hover {
      backface-visibility: hidden; 
      transform: scale(1.05); /* (150% zoom - Note: if the zoom is too large, it will go outside of the viewport) */
      
    }
</style>

<p><h1 style="text-align:center">
    Welcome! Interested in applying for the 26-27 season? 
</h1></p>

We are the Brookline Bots, Team 17218, based out of Brookline, Massachusetts. 
The team is made up of many students attending Brookline High School, 2 coaches, 
several amazing mentors, and multiple gracious corporate sponsors! Our team is 
dedicated to [FIRST](https://www.firstinspires.org/) (For Inspiration and Recognition 
of Science and Technology), our community, and working hard to encourage [STEM](http://www.brooklinerobotics.org/) 
(Science, Technology, Engineering, and Math) topics within our community. The Brookline 
Bots are looking forward to competing in each and every FTC Season. To learn more about 
our team, check out the About Us section of our website!



<div style="text-align:center;margin-bottom:30px;">
  <a href="https://forms.gle/N5ssMBWQc8QSqtgbA" target="_blank" style="display:inline-block; background-color:#4a4580; color:#ffffff; padding:10px 20px; border-radius:6px; text-decoration:none; font-weight:bold; font-size:28px;"> Apply for BBots 2026-2027 </a>
</div> 

<p style="margin-bottom:30px;">Check back here often for events, competitions, and general team information!</p>

---
<div style="text-align:center; vertical-align: middle; padding:0px 0;">
    <img src="images/BBotsHomeTeamPic.jpg" alt=" " class="zoom" width="650" height="auto" >
</div>
---

<div class="zoom"></div> 

<h2 style="color:#5777a8; text-align:center; font-family:Dongle, Roboto, sans-serif; font-size: 500%">About us</h2>

<div style="text-align: center;font-family:Dongle, Roboto, sans-serif; font-size: 150%;">
<buttonhover class="noWrap full-rounded" onclick="teamFocus()"><span class="noWrap">Team Focus</span><div class="border full-rounded"></div></buttonhover>
<buttonhover class="noWrap full-rounded" onclick="missionStatement()"><span class="noWrap">Mission Statement</span><div class="border full-rounded"></div></buttonhover>
<buttonhover class="noWrap full-rounded" onclick="teamHistory()"><span class="noWrap">Team History</span><div class="border full-rounded"></div></buttonhover>
</div>

<div id="missStat" style="display:none">
<br>
      The Brookline Bots are dedicated to advancing STEM education through robotics in the Brookline community! Our mission is to inspire and empower students in Brookline by providing hands-on experiences in science, technology, and engineering. Through collaboration with mentors, teachers, and local organizations, we strive to create opportunities for students to develop critical problem-solving and leadership skills by expanding the reach of FIRST programs to underrepresented groups and supporting teams at all levels.</div>

<div id="teamFoc" style="display:none">
<br>
      <p>
        We’re not just here to compete—we’re here to create a wave of opportunity. Our mission is to expand access to FIRST Tech Challenge in our community by mentoring future teams, uplifting young innovators, and showing that anyone can thrive in STEM.</p>
</div>

<div id="teamHist" style="display:none">
<br>
  <p>
     Over the years, the Brookline Bots have had many significant achievements. We've attended many competitions over the years, from local qualifiers to state championships. We haven't kept quiet about what we do either. You can find the Brookline Bots spreading the message of FIRST within our community by attending galas, networking nights, and hosting booths at local schools' STEM nights. Team 17218, the Brookline Bots has accomplished much since our founding year.
  </p>
</div>

<script>
function missionStatement() {
    let m = document.getElementById("missStat");
    let f = document.getElementById("teamFoc");
    let h = document.getElementById("teamHist");
    f.style.display = "none";
    h.style.display = "none";
    if (m.style.display === "none") {
        m.style.display = "block";
    } else {
        m.style.display = "none";
    }
} 
function teamFocus() {
    let m = document.getElementById("missStat");
    let f = document.getElementById("teamFoc");
    let h = document.getElementById("teamHist");
    m.style.display = "none";
    h.style.display = "none";
  if (f.style.display === "none") {
    f.style.display = "block";
  } else {
    f.style.display = "none";
  }
}
function teamHistory() {
    let m = document.getElementById("missStat");
    let f = document.getElementById("teamFoc");
    let h = document.getElementById("teamHist");
    f.style.display = "none";
    m.style.display = "none";
  if (h.style.display === "none") {
    h.style.display = "block";
  } else {
    h.style.display = "none";
  }
}
</script>
