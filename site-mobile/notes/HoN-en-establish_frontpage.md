---
title: establish a frontpage for the HoN website, english audience
author: 
	- Morten Kjelkenes
Owner: Morten Kjelkenes
date: 2025-03-02
hoursExpected: 8 - 12
hoursEstimated: TBD
hoursUsed:  
deliveryDate: 2025-03-10


---

## Description 

Make a new frontpage for HoN project for our english audience

## Purpose

To serve as a frontpage for our english speaking audience.



## deliverable(s)

* a wireframe of the frontpage (mobile only)
* an english  html5 template for the frontpage (toolbox/templates/html/HoN-en-frontpage-template.html)
* a document with the content of the frontpage
	- target document frontmatter (documents/HoN-en-frontpage/HoN-en-frontpage-frontmatter.md) 
	- target document config   (documents/HoN-en-frontpage/HoN-en-frontpage-config.yml)
* add the document to the site build 


## Plan (by Mateo Osorio)

### Deliverables

1. Wireframe of the Frontpage
	- A visual representation of the layout and structure of the frontpage.

2. HTML5 Template (HoN-en-frontpage-template.html)
	- A well-structured and semantically correct HTML5 template.
	- Responsive and accessible design.
	- Placeholder content for easy integration.

3. Document with Frontpage Content
	- Frontmatter (YAML metadata for static site generators)
	- Configuration details (site settings, page parameters, etc.)

4. Integration into the Site Build
	- Ensure the frontpage is included in the site’s navigation and deployment.

### Steps to Execution

1. Design the Wireframe
	- Use a tool a simple hand-drawn sketch to define the page layout.
	- Sections to include:
	- (discussion) Hero section (Title, tagline, call to action)
	- Overview of HoN Project
	- Key Features/Sections
	- Latest Updates or News
	- Footer with relevant links


Main navigational menu: (documents/sources/HoN-en-siteOverview.uml)

``` plant uml syntax (activity)
**_ Home
**_ About
**_ Blog
**_ Registration

**_ Members (login)
***_ Profile
***_ Knowledge
****_ Subject
****_ Standalone
***_ Help (memebers)

**_ admin (login)
***_ Members
***_ New Registrations (for approval)

**_ help

```


2. Build the HTML5 Template
	- Create a structured and clean semantic HTML5 document.
	- Ensure it follows accessibility best practices (WCAG 2.2 compliance)

3. Draft Frontpage Content Document
	- Define the metadata/frontmatter (e.g., title, description, permalink).
	- Prepare the actual page content in markdown/HTML.

note: the workflow for content: 
content (document/sources) -assembles-> 
documents/HoN-frontpage/HoN-en-frontpage.md

4. Integrate into Site Build
	- Add the new document and template to the existing project structure.
	- Update any necessary configuration files.
	- Test the build process to confirm integration.

## task log

* 2025-03-05 => MK: Task established and described
* 2025-03-05 => MK: Copied the plan from example task (mMteos).
* 2025-03-05 => MK: removed figam and adobe XD from the steps. 
* 2025-03-05 => MK: added semantic to the 1st bullet on step 2.
* 2025-03-05 => MK: added version to the WCAG Standard reference. 
* 2025-03-05 => MK: removed "Use placeholder text for dynamic content."

