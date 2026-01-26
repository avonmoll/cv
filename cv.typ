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
  ([2025], [Aerospace Systems Directorate Don Ross Scientific Achievement Award]),
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

== Editorial Experience
- Associate Editor, IEEE Transactions on Aerospace and Electronic Systems, 2026--present
- Associate Editor, 2026 American Control Conference

== Publications

#let me = regex("(A. )*Von Moll")
#show me: strong

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
