# Project Organisation
This documentation gives an overview of the methodologies used as well as what, how, who, and when the group solved issued tasks. 


## Scrum / Kanban
Since our group was relatively small, communication and task/issue tracking was kept fairly straightforward. 
We used weekly meetings to discuss and plan current issues and tasks that need to be solved within the deliverable timeline. This decision served as a foundation as we also met online during the week to further discuss some ongoing issues or questions which arose during the development. We believed it was the right amount of fixed communication for this group size and to let the rest be discussed rather spontaneously. 

Our entire project table can be found [here.](https://github.com/orgs/ase-23-the-bald-owls/projects/1) In general, for each deliverable timeframe, we had a kanban board, consisting of issue and feature tasks. These were structured in the columns 'Todo' , 'In Progress' ,  'In Review', and 'Done'. This is a common practice to structure the progress more clearly and to see what the group members were working on.
At the beginning of a deliverable time frame, the group discussed which ticket or issue they were going to focus on and then started working. If a ticket was done before the end of the deliverable phase, commonly another ticket was started. The deliverables themselves served as milestones during the project life cycle. Similarly here, the group's main reasoning was to keep the communication and administration overhead as minimal as possible to focus on delivering or fixing issues in the software.

Initially, the tasks were derived from the requirements analysis and Stakeholders and Personas the group created. Then, the tasks were categorized into 'should', 'could', 'must', or 'won't'. The focus was set on deploying first all core functionalities of the web shop, the 'must' tickets to the production. If there was enough time, the should or could tickets would then be targeted next, depending on the overall pace of the group. Furthermore, a ticket size in the form of a 'T-Shirt size' was estimated to evaluate roughly how much workload a ticket had to better plan and execute the deliverables.


To visualize the history better, a Gantt chart depicts what tasks were done in which timeline:
![GanttChart_1](/docs/components/GanttChart_TBO_1.png "Gantt Chart 1")
![GanttChart_2](/docs/components/GanttChart_TBO_2.png "Gantt Chart 2")


## Versioning
As for the versioning of our repository, the group created feature and bug branches based on the current main branch. Merges into the main branch were only possible when the following criteria have been met:

- CI reports successful build
- CD reports successful build
- Dev setup reports successful build
- SonarQube reports no issues

When all of the mentioned boxes are checked, the feature or bug branch was then merged through a **Pull Request** into the main branch. The general reasoning for this was to prevent any low quality code or generally untested code in production. No tags or similar features were used as the group was small enough to keep good track of the code versioning.
A visual representation of our entire git graph can be found [here](/docs/components/):

## Pull Requests
If one branch was ready to be merged, a mandatory Pull Request was necessary because the main branch was blocked initially to avoid any unfinished changes in the main branch. Also, if one of the two group members created the Pull Request, the other author had to approve it before merging. Smaller issues were directly commented on or improved with the suggestion feature from GitHub. Otherwise, a comment was made to rewrite the specific parts of the code before making an approval. 
Also, whenever possible, we merged and rebased our main branch in order to provide a cleaner history. All of the project **Pull Requests** can be found [here](https://github.com/ase-23-the-bald-owls/swiss-card-exchange/pulls?q=is%3Apr+is%3Aclosed)