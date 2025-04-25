# BT4BR course

## Assignment #5: Basics of GitHub

### Bacis information about author

>**Date:** 08.04.2025<br>
>**Name & surname:** Maksymilian Gmur<br>
>**Collage:** Jagiellonian University<br>
>**Field of study:** Bioinformatics<br>
>**Degree:** Bachelor<br>

### GitHub commands breakdown
>This section will cover the most usefull commands that can be used to eddit GitHub repositories.
#### Basic workflow
>**It describes a line of commands that are always used if you want to change something in your repository.**<br> 
```
git add -u
git commit -m "Commit name"
git push origin branch
```
#### Merging conflicts 
>**This section will provide simple commands that can be used if you encounter merging conflict.**
```
git log --merge
```
>[!NOTE]
>This command wil provide you with insight to  what is causing the conflict.
>The conflicting changes will be put together in a edited file.
```
git add -u Name_file_with_conflict
git commit -m "Fix merge"
git push origin
```
>[!IMPORTANT]
>Before adding file you can manually edit the file to decide which change you want to leave
#### Git commands
- `git checkout`: (Changes working branch)
- `git merge branch`: (Merges content of current branch with branch listed in commend)
- `git show`: (Shows the contents of a single commit)
- `git add`: (Select files that will be commited)
	- `git add .` (Adds all files in the directory)
	- `git add -u` (Adds only modified files)
- `git pull`: (Downloads from webserver and merges it with files on computer)
- `git branch`: (Creates a new branch)

## Assignment #7:  Tidyverse, Dplyr, intro to ggplots
### 
>This section will only provide link to file necessary for completing the assignment.
[Plik Quarto](Assignment_7.qmd)
[Plik HTML](Assignment_7.html)
