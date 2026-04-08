Branching and Merge Conflict Resolution

1) Create first branch 
> git checkout -b branch1

2) Make changes in Branch 1
add , commit and push the code '

3) Creating second branch from base 
make difference in same file with different content
add , commit and push to base

4) Merge the branch1 into base branch 
> git checkout week1
> git merge branch1

5) merge branch 2 
> git merge branch2
Git detects conflicting changes in the same file
A merge conflict error is generated

6) Resolve merge conflict mannualy 

7) Mark conflict as resolved 
> git add file.txt 
> git commit -m "Resolved merge conflict"

8) Push Final Changes
> git push origin week1



