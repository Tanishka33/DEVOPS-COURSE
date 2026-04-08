PART 1: SETUP 

1) Configure Git
> git config --global user.name "YourName"
> git config --global user.email "your-email@example.com"

1) Clone Repo from Github
> git clone https://github.com/Tanishka33/DEVOPS-COURSE.git
It will download repo from github repo.

2) Check Remote connection
Navigate to project folder
> git remote -v
Shows the github connection

3) Create Branch 
> git checkout -b week1

4) Add file
> git add .
Stage all changes for commit

5) Commit Changes
> git commit -m "Added sample file"
Save changes locally with message

6) Push to github
> git push origin week1
Upload changes to GitHub repository


Part 2: Working with Git using VS Code UI

1) Open vscode Repository in Vscode
Open project folder

2) Create or Modify files to make changes so that git will track change.

3) Open source control panel (ctrl+shift+g)
we can view all changes here

4) Stage changes
Click '+' icon to add file inti staging area before commit.

5) Commit changes
Enter commit message and click commit.
Save changes locally.

6) Push Changes to github
click push button to upload changes to remote repository

7) Verify on github
