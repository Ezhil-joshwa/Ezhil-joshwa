from pathlib import Path
import pypandoc, os

readme = r'''<div align="center">

<img src="https://capsule-render.vercel.app/api?type=rect&height=6&color=0:22d3ee,50:a78bfa,100:fb7185" width="100%" alt="" />

# ⚡ Ezhil Joshwa

### `FULL STACK DEVELOPER` · `BUILD WITH EZHIL`

**Building modern web applications with clean code, great UI, and real-world impact.**

📍 Coimbatore, India · 💼 Open to opportunities · 🚀 Build. Innovate. Grow.

[![Portfolio](https://img.shields.io/badge/PORTFOLIO-080d1b?style=for-the-badge&logo=googlechrome&logoColor=22d3ee)](https://portfolio.ezhilgunasekaren05.workers.dev/)
[![LinkedIn](https://img.shields.io/badge/LINKEDIN-080d1b?style=for-the-badge&logo=linkedin&logoColor=0A66C2)](https://www.linkedin.com/in/ezhil-gunasekaran-15842b417/)
[![GitHub](https://img.shields.io/badge/GITHUB-080d1b?style=for-the-badge&logo=github&logoColor=white)](https://github.com/Ezhil-joshwa)

<img src="https://readme-typing-svg.demolab.com?font=Courier+Prime&weight=700&size=18&duration=2500&pause=700&color=22D3EE&center=true&vCenter=true&width=520&lines=BUILD.+INNOVATE.+GROW.;React+%7C+TypeScript+%7C+Java;Spring+Boot+%7C+PostgreSQL+%7C+AWS" alt="Typing text" />

</div>

---

<table>
<tr>
<td width="58%" valign="top">

## 🧑‍💻 `ABOUT_ME`

I'm a Full Stack Developer who enjoys turning ideas into practical digital products. I work across frontend, backend, databases, and deployment, with a focus on clean UI and maintainable code.

- 🔭 Building full-stack web applications
- 🌱 Growing my skills in AWS, DevOps, and system design
- 🧩 Interested in scalable architecture and real-world problem solving
- 🤝 Open to collaboration and useful open-source projects

**PERSONALITY TRAITS**

![Problem Solver](https://img.shields.io/badge/Problem_Solver-10182a?style=flat-square&logo=target&logoColor=22d3ee)
![Quick Learner](https://img.shields.io/badge/Quick_Learner-10182a?style=flat-square&logo=bookstack&logoColor=a78bfa)
![Team Player](https://img.shields.io/badge/Team_Player-10182a?style=flat-square&logo= handshake&logoColor=fb7185)

</td>
<td width="42%" valign="top">

## 📊 `GITHUB_STATS`

<img src="https://github-readme-stats.vercel.app/api?username=Ezhil-joshwa&show_icons=true&hide_border=true&bg_color=080d1b&title_color=22d3ee&text_color=e2e8f0&icon_color=a78bfa" alt="GitHub stats" width="100%" />

<img src="https://github-readme-streak-stats.herokuapp.com/?user=Ezhil-joshwa&hide_border=true&background=080d1b&ring=22d3ee&fire=fb7185&currStreakLabel=22d3ee&sideLabels=e2e8f0&dates=94a3b8" alt="GitHub streak" width="100%" />

</td>
</tr>
</table>

## 🧰 `TECH_STACK`

<div align="center">

| 🎨 FRONTEND | ⚙️ BACKEND | 🗄️ DATABASE | ☁️ CLOUD & DEVOPS |
|:---:|:---:|:---:|:---:|
| <img src="https://skillicons.dev/icons?i=react,ts,js,html,css,tailwind&perline=3" alt="Frontend" /> | <img src="https://skillicons.dev/icons?i=java,spring,nodejs,express&perline=2" alt="Backend" /> | <img src="https://skillicons.dev/icons?i=postgres,mysql,mongodb&perline=2" alt="Databases" /> | <img src="https://skillicons.dev/icons?i=aws,docker,linux,nginx,cloudflare&perline=3" alt="Cloud and DevOps" /> |

</div>

## 🚀 `FEATURED_PROJECTS`

<table>
<tr>
<td width="33%" valign="top">

### 🏢 Real Estate CRM

Role-based CRM concept for real estate teams, with property tracking, reminders, and workflow management.

`React` `Spring Boot` `PostgreSQL`

[Explore repositories ↗](https://github.com/Ezhil-joshwa?tab=repositories)

</td>
<td width="33%" valign="top">

### 🏡 Rental Homes & Rooms

Rental platform concept for homes, rooms, and PG listings, with owner workflows and payment integration.

`React` `Spring Boot` `Cashfree`

[Explore repositories ↗](https://github.com/Ezhil-joshwa?tab=repositories)

</td>
<td width="33%" valign="top">

### 🌐 WordPress + React

A CMS-backed website approach with WordPress managing content and React powering the frontend.

`React` `WordPress` `Docker`

[Explore repositories ↗](https://github.com/Ezhil-joshwa?tab=repositories)

</td>
</tr>
</table>

## 🎯 `CURRENTLY_WORKING_ON`

- 🟢 Improving full-stack architecture and code quality
- 🔵 Building portfolio-ready projects
- 🟣 Learning AWS and DevOps practices
- 🟠 Exploring AI/ML and system design
- ⚡ Practising collaboration and open-source workflows

## 📈 `CONTRIBUTION_ACTIVITY`

<div align="center">

<img src="https://github-readme-activity-graph.vercel.app/graph?username=Ezhil-joshwa&bg_color=080d1b&color=e2e8f0&line=22d3ee&point=a78bfa&area=true&hide_border=true" alt="Contribution activity graph" width="100%" />

<img src="https://github-profile-trophy.vercel.app/?username=Ezhil-joshwa&theme=onestar&no-frame=true&no-bg=true&row=1&column=6" alt="GitHub trophies" width="100%" />

</div>

---

<div align="center">

### 💜 “Build. Innovate. Grow.”

*Turning ideas into real-world products.*

[![LinkedIn](https://img.shields.io/badge/LET'S_CONNECT-080d1b?style=for-the-badge&logo=linkedin&logoColor=22d3ee)](https://www.linkedin.com/in/ezhil-gunasekaran-15842b417/)
[![GitHub](https://img.shields.io/badge/FOLLOW_ON_GITHUB-080d1b?style=for-the-badge&logo=github&logoColor=white)](https://github.com/Ezhil-joshwa)

<img src="https://capsule-render.vercel.app/api?type=rect&height=6&color=0:fb7185,50:a78bfa,100:22d3ee" width="100%" alt="" />

<sub>Designed with ☕, code, and curiosity · Ezhil Joshwa</sub>

</div>
'''
# Write markdown directly; it includes GitHub-supported Markdown and HTML.
out = "/mnt/data/README.md"
Path(out).write_text(readme, encoding="utf-8")
print(f"Created styled Markdown-only README: {out} ({os.path.getsize(out):,} bytes)")
