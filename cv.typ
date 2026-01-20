#import "@preview/basic-resume:0.2.9": *

#show bibliography: none
#bibliography("bib.yaml", style: "ieee")
// #bibliography("bib.yaml", style: "springer-basic-author-date")
#import "bib-helpers.typ": *

// Put your personal information here, replacing mine
#let accent-color = "#79740e" 
#let name = "Alexander Von Moll"
#let location = "WPAFB, OH, USA"
#let email = "alexander.von_moll@afrl.af.mil"
#let github = "github.com/avonmoll"
#let linkedin = "linkedin.com/in/alexander-von-moll/"
#let phone = "+1 (513) 237-5597"
#let personal-site = "avonmoll.github.io"

#show: resume.with(
  author: name,
  // All the lines below are optional. 
  // For example, if you want to to hide your phone number:
  // feel free to comment those lines out and they will not show.
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  // accent-color: "#8da101",
  // accent-color: "#98971a",
  accent-color: accent-color,
  // font: "TeX Gyre Pagella",
  paper: "us-letter",
  author-position: left,
  personal-info-position: left,
)

/*
* Lines that start with == are formatted into section headings
* You can use the specific formatting functions if needed
* The following formatting functions are listed below
* #edu(dates: "", degree: "", gpa: "", institution: "", location: "")
* #work(company: "", dates: "", location: "", title: "")
* #project(dates: "", name: "", role: "", url: "")
* #extracurriculars(activity: "", dates: "")
* There are also the following generic functions that don't apply any formatting
* #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
* #generic-one-by-two(left: "", right: "")
*/
== Education

#edu(
  institution: "University of Cincinnati",
  location: "Cincinnati, OH, USA",
  dates: dates-helper(start-date: "2019", end-date: "2022"),
  degree: "PhD in Electrical Engineering",
  gpa: "4.0",
)
// - Cumulative GPA: 4.0\/4.0 | Dean's List, Harvey S. Mudd Merit Scholarship, National Merit Scholarship
// - Relevant Coursework: Data Structures, Program Development, Microprocessors, Abstract Algebra I: Groups and Rings, Linear Algebra, Discrete Mathematics, Multivariable & Single Variable Calculus, Principles and Practice of Comp Sci
- GPA: 4.0
- Research: _Skirmish-Level Tactics via Game Theoretic Analysis_
- Advisor: Prof. Zachariah #smallcaps[Fuchs]

#edu(
  institution: "Georgia Institute of Technology",
  location: "Atlanta, GA, USA",
  dates: dates-helper(start-date: "2014", end-date: "2015"),
  degree: "MS in Aerospace Engineering",
  // gpa: "4.0",
  gpa: 4.0,
)
- GPA: 4.0
- Special Project: _Machine Learning Applications in Complex Control Systems_
- Advisor: Prof. Evangelos #smallcaps[Theodorou]

#edu(
  institution: "The Ohio State University",
  location: "Columbus, OH, USA",
  dates: dates-helper(end-date: "2012", start-date: "2008"),
  degree: "BS in Aero/Astro Engineering",
  gpa: 3.97,
)
- GPA: 3.97
- Minor: _Computer Science_


== Work Experience

#work(
  title: "Aerospace Engineer",
  location: "WPAFB, OH, USA",
  company: "Air Force Research Laboratory",
  dates: dates-helper(start-date: "2017", end-date: "Present"),
)\
Perform fundamental research as a member of the UAV Cooperative Control Team under the Autonomous Controls Branch of the Power and Control Division. Describe, define, and solve problems of interest to the Air Force in the areas of pursuit-evasion differential games and algorithms for persistent intelligence, surveillance, and reconnaissance. 

#work(
  title: "Aerospace Engineer",
  location: "WPAFB, OH, USA",
  company: "Air Force Research Laboratory",
  dates: dates-helper(start-date: "2012", end-date: "2017"),
)\
Served as Integrated Product Team member under several turbine engine technology programs. Established plans and roadmaps for turbine engine control technologies. Supported research programs in turbine engine control software, actuators, and sensors. 

#work(
  title: "Software Development Intern",
  location: "St. Louis, MO, USA",
  company: "Boeing",
  dates: dates-helper(start-date: "Jun 2011", end-date: "Aug 2011"),
)\
Developed support software and tools for the F-15SA flight control software group. 

== Awards

#let awards = (
  ([2024], [Air Force Research Laboratory Jack Blackhurst Innovation Award]),
  ([2022], [Excellent Reviewer -- AIAA Journal of Guidance, Control, and Dynamics]),
  ([2022], [University of Cincinnati Department of Electrical Engineering & Computer Science Outstanding Doctoral Dissertation Award]),
  ([2019], [Aerospace Control & Guidance Systems Committee Dave Ward Memorial Lecture Award]),
  ([2014], [AFRL Turbine Engine Division Civilian of the Year]),
  ([2014], [Department of Defense SMART Scholarship]),
  ([2011], [Department of Defense SMART Scholarship]),
)

#let award-format(award) = (award.at(0), $dot.c$, award.at(1))
#let formatted-awards = awards.map(award-format).flatten()

#grid(
  columns: (auto, auto, 1fr),
  column-gutter: 8pt,
  row-gutter: 0.65em,
  ..formatted-awards
)

== Editorial Experience and Professional Service
- Associate Editor for the 2026 American Control Conference
- Invited Session Organizer for the 2026 American Control Conference: Multi-Agent Control & Coordination (double session)
- Invited Session Organizer for the 2026 SciTech Forum: Multi-Agent Control & Coordination (double session)
- Invited Session Organizer for the 2025 SciTech Forum: Multi-Agent Control & Coordination (double session)
- Invited Session Organizer for the 2024 SciTech Forum: Multi-Agent Control & Coordination (double session)

== Publications

#let me = regex("(A. )*Von Moll")
#show me: strong

=== Direct Contributions to IEEE Transactions on Aerospace & Electronic Systems

Two contributions have been made to IEEE TAES.
The first addresses a two-attacker versus turret scenario in which cooperation among the attackers is required in order to achieve their goal of neutralizing the turret @vonmoll2022turret-runner-penetrator.
The second addresses the problem of rendezvous and subsequent tracking of a target moving on a fixed course @weintraub2023surveillance.

#cite(<vonmoll2022turret-runner-penetrator>, form: "full")

#cite(<weintraub2023surveillance>, form: "full")

=== Relevance to IEEE Transactions on Aerospace & Electronic Systems

#show heading.where(level: 4): it => {
  set text(black)
  strong(it)
}

==== Guidance and Control Systems
This research contributes to the design and analysis of guidance and control systems, specifically focusing on optimal control, differential games, and tactical maneuvering.
- _Tactical and Optimal Evasion Against Pure Pursuit_:
    - Characterized the pure pursuit guidance law for finite capture radius @vonmoll2022pure and provided guidelines for successful evasion of a faster evader
    - Optimal evasion from two pursuers employing pure pursuit @vonmoll2020optimalevasion
- _Cooperative Defense_: Investigated circular target defense differential games @vonmoll2022circular, cooperative turret defense @vonmoll2026target, and multi-pursuer border defense @vonmoll2020multiple
- _Threat-Aware Maneuvering_: Addressed navigation around weapon engagement zones via a variety of methods including optimal control @weintraub2022optimal @vonmoll2020optimal, stochastic optimal control @vonmoll2025one-vs-one, and geometric methods @vonmoll2026reactive  @vonmoll2024basic  
- _Tactical Game Theory_: Solved several turret-based and pursuit-evasion differential games, providing optimal high-level guidance (i.e., heading) to the agents @vonmoll2023turret @vonmoll2019robust @vonmoll2021turret @vonmoll2024complete
These works directly apply to the following areas within GNC: missile applications including national or theater defense systems, autonomous guidance, and applications of optimization.

==== Autonomous Systems
This research directly supports the TAES focus on UAV autonomous flight control, swarms, and path planning for autonomous missions.
- _Swarm & Fleet Coordination_: Developed geometric approaches for multi-pursuer single-evader games @vonmoll2019multi-pursuer @pachter2020cooperative
- _UAV Interaction & Roles_: Analyzed the turret-runner-penetrator differential game with a focus on role selection for coordinated autonomous platforms @vonmoll2022turret-runner-penetrator
- _Autonomous Path Planning_: Developed a genetic algorithm approach for UAV persistent visitation and surveillance of a sequence of targets @vonmoll2018genetic

==== Intelligent Systems
Many of the previously referenced works directly address the collaborative teaming aspect of the Intelligent Systems area (e.g., @vonmoll2026target @vonmoll2022turret-runner-penetrator @vonmoll2020multiple).
Additionally, there are several other works which address the aspect of operating aerospace systems in uncertain environments, particularly in the area of avoiding weapon engagement zones in the presence of wind @milutinovic2024stochastic @milutinovic2025stochastic.
Recent work on optimal uncertainty quantification has shown very promising capabilities for the certification of aerospace systems with limited information @subramanian2026certification.

=== Journal Papers
#for key in journal-pubs [
  #cite(key, form: "full")

]
=== Conference Papers
#for key in conference-pubs [
  #cite(key, form: "full")

]

#v(2cm)

#datetime.display(datetime.today(), "[day] [month repr:long] [year]")
