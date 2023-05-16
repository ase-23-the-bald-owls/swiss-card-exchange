# Project Organisation
This documentation gives an overview over the methodologies used as well as what, how, who and when the group solved issued tasks. 


## Scrum / Kanban
Since our group was relatively small, communication and task/issue tracking was kept fairly straightforward. 
We used weekly meetings to discuss and plan current issues and tasks that need to be solved within the deliverable timeline. Our entire project table can be found [here.](https://github.com/orgs/ase-23-the-bald-owls/projects/1) In general, for each deliverable time frame we had a kanban board consisting of issue and feature tasks. These were structured in the columns 'Todo' , 'In Progress' ,  'In Review', and 'Done'. The Deliverables served as milestones during the project life cycle.
Initially, the tasks were derived from the requirements analysis and Stakeholders and Personas the group created. Then, the tasks were assigned into 'should', 'could', 'must' or 'won't'. The focus was set on deploying all core functionalities of the web shop, the 'must' tickets to production.
To visualize the history better, we created a gantt chart to show what tasks were done in which timeline:
![GanttChart_1](/docs/components/GanttChart_TBO_1.png "Gantt Chart 1")
![GanttChart_2](/docs/components/GanttChart_TBO_2.png "Gantt Chart 2")


## Versioning
As for the versioning of our repository, the group created feature and bug branches based on the current main branch. Merges into the main branch were only possible when the following criteria have been met:

- CI reports successfull build
- CD reports successfull build
- Dev setup reports successfull build
- SonarQube reports no issues

When all of the mentioned boxes are checked, the feature or bug branch was then merged into the main branch.
A visual representation of our entire git graph can be found [here](/docs/components/):

## Pull Requests
