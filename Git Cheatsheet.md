GIT Cheatsheet
====
[15分钟搞定GTD——一个让你把事情做完的系统性指南](http://select.yeeyan.org/view/519841/437987)

Google: bash ctrl-a -> [bash keyboard shortcuts - Linux - SS64.com](https://ss64.com/bash/syntax-keyboard.html)

## Git notes

### Git flow

* http://grokcode.com/717/how-to-use-source-control-effectively/
* Git Flow
  * Google: git flow

### Git guides
* [git - the simple guide - no deep shit!](rogerdudler.github.io/git-guide/)
  * <https://github.com/rogerdudler/git-guide>
  * <http://rogerdudler.github.io/git-guide/index.zh.html>
  * -> [Think Like (a) Git](-> <http://think-like-a-git.net/>)
  * [git 使用简易指南](https://www.bootcss.com/p/git-guide/)
* [git ready » learn git one commit at a time](http://gitready.com/)
  * from: Google: git showing all branch in remote -> [git ready » list remote branches](gitready.com/intermediate/2009/02/13/list-remote-branches.html)
* [Git Tutorials and Training _ Atlassian Git Tutorial](https://www.atlassian.com/git/tutorial/git-basics#!init) 
  * (from: http://www.instructables.com/id/GitPi-A-Private-Git-Server-on-Raspberry-Pi/?ALLSTEPS)
* Git - Book <https://git-scm.com/book/en/v2> = <https://book.git-scm.com/book/en/v2>
  * <https://git-scm.com/book/zh-tw/v2>
  * -> <http://gitimmersion.com/>
* <https://progit.org/book/>
  * [Pro Git 中文版（第二版）](https://progit.bootcss.com)
* [Git 教學 - Git 書 - 為你自己學 Git _ 高見龍](https://gitbook.tw)
  * Cheatsheet: [Git 面試題 - Git 教學 _ 高見龍](https://gitbook.tw/interview)

### Git Cheatsheet

* **[Git cheat sheet | Atlassian Git Tutorial](https://www.atlassian.com/git/tutorials/atlassian-git-cheatsheet)** & PDF
* Cheatsheet: [Git 面試題 - Git 教學 _ 高見龍](https://gitbook.tw/interview)

### Setup a private Git server

http://www.instructables.com/id/GitPi-A-Private-Git-Server-on-Raspberry-Pi/?ALLSTEPS


### Reference (general)
----

@2014

First thing first, here is my `.gitconfig` file, which is placed in my home:

```bash
[alias]
	hist = log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short
[user]
	email = aaronlaw@gmail.com
	name = aaronlaw
```

@2019

First thing first, here is my `.gitconfig` file, which is placed in my home:

```bash
[alias]
	hist = log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short
	mist = log --pretty=format:'%s' --graph --date=short 
[user]
	email = aaronlaw@gmail.com
	name = Aaron Law
```

@2019-10: To automate git pulling, I setup a cron job:

```bash
crontab -e
```
For example, I `git pull` the active branch on a 30 mins interval during 7am~6pm everyday: 
```bash
*/30 7-18 * * * cd ~/Syncthing/Sites4/Python/revenue-engine/ && git pull
```



----

#### Fixing the Last Commit

Q: How can I rewrite / correct message in last commit?

* https://www.git-tower.com/learn/git/ebook/en/command-line/advanced-topics/undoing-things

```bash
# without any staged changes but with the correct message
$ git commit --amend -m "This is the correct message"
```

In case you want to add some more changes to that last commit, you can simply stage them as normal and then commit again:

```bash
$ git add some/changed/file.ext
$ git commit --amend -m "commit message"
```

----

#### Discard change

Q: I have commited and then change files to play around. After playing around, how can I discard changes?

Google: git discard changes

* [version control - How do I discard unstaged changes in Git_ - Stack Overflow](https://stackoverflow.com/questions/52704/how-do-i-discard-unstaged-changes-in-git)

```bash
$ git checkout <hash> # Results in a detach head state
$ git checkout . # to discard change. Or use `git stash` to save changes
```

----

#### Reset to a Previous State

Q: My code goes wrong! How can I reset it to a previous commit?

Google: git reset -> google: git checkout sha -> Google: git Switch to a previous state of the repository

* https://github.com/francopestilli/life/wiki/Switch-to-a-previous-state-of-the-repository
* https://githowto.com/getting_old_versions
* https://makandracards.com/ff-it/21967-git-temporarily-revert-to-previous-commit

```bash
# Getting hashes for the previous versions
$ git checkout <hash> # Results in a detach head state
```

```bash
# Returning to the latest version in the master branch
$ git checkout master
```

* https://www.git-tower.com/learn/git/faq/restore-repo-to-previous-revision

This will rewind your HEAD branch to the specified version. All commits that came after this version are effectively undone; your project is exactly as it was at that point in time.

** Cation: Using the `reset` command on you HEAD branch removes any commits (on this branch) that come after the specified revision. **

```bash
# Returning to an Old Revision
# The fastest way to restore an old version is to use the "reset" command:
$ git reset --hard <hash> 
```

You'll be left with a couple of changes in your working copy and can then decide what to do with them. The reset command comes with a couple of options, one of the more interesting ones being the "--soft" flag. If you use it instead of --hard, Git will keep all the changes in those "undone" commits as local modifications:

```bash
# Returning to an Old Revision
# Git will keep all the changes in those "undone" commits as local modifications:
$ git reset --soft 0ad5a7a6
```

Using the `reset` command on you HEAD branch removes any commits (on this branch) that come after the specified revision.

However, there is also a "safer" way in case you'd prefer leaving your current HEAD branch untouched. Since "branches" are so cheap and easy inGit, we can easily create a new branch which starts at that old 
revision:

```bash
# Restoring a Revision in a New Local Branch
$ git checkout -b old-project-state 0ad5a7a6

# it create a new branch (named "old-project-state" in this example). If you don't want it to start at the current HEAD revision, you also need to provide a commit hash - the old project revision we want to restore.
# Voilà: you now have a new branch named "old-project-state" reflecting the old version of your project - without touching or even removing any other commits or branches.
```

----

#### Pull back to a Forked Git Repository

Google: git reset -> google: git checkout sha -> Google: git Switch to a previous state of the repository -> https://github.com/francopestilli/life/wiki/Switch-to-a-previous-state-of-the-repository -> https://github.com/francopestilli/life/wiki/Switch-to-a-previous-state-of-the-repository (better to read the page)

```bash
# ...git clone, git config --global user.name, ...
# Add the upstream pointing to the online repository using my user:
$ git remote add upstream https://aaronlaw@github.com/brain-life/life.git
# Create a branch for my changes.
$ git branch <new branch name>
# Move to my new branch.
$ git checkout <new branch name>
# Make some change and then commit
$ git commit -am "My Message Here"
# Push the local changes up to github
$ git push origin <new branch name>
```

** Below the original page **

Please note that you will need to complete these only once for each machine. 

\1. Install git on your machine from above. 

\2. Create an account on Github. 

\3. Go to the <https://github.com/frakkopesto/life> Page. 

\4. Create a 'Fork' into your own repository. 

\5. Go to your own folder (for example, ~/matlab/git/) and clone this into your local machine so you have it locally. 

```
  git clone https://github.com/(YOUR USERNAME)/life.git
```

\6. Cd into the repository that you just created. 

```
  cd life
```

\7. Set up an 'upstream' pointer to the online repository. THis will  require setting up correctly your github user account (see appropriate  section). 

```
  git config --global user.name "francopestilli"
  git config --global user.email francopestilli@gmail.com
```

Add the upstream pointing to the online repository using yoru user: 

```
  git remote add upstream https://francopestilli@github.com/brain-life/life.git
```

\8. When you want to make a change to the code, create a branch for your changes. 

```
  git branch [new branch name]
```

\9. Move into your new branch. 

```
  git checkout [new branch name]
```

\10. Make any changes that you want.   

```
  some code here
```

\11. Commit your changes to your branch 

```
  git commit -am "Your Message Here"
```

\12. Now, let's push the local changes that you have on your computer up to github so that it is saved there. 

```
  git push origin [new branch name]
```

You can now see your branch and all of your changes on github. When  you are ready for this code to be integrated into frakkopesto/life,  issue a pull request. This completes making the local repository on your  machine. When you visit the web-page of the newly-created repository,  it will contain the complete constructions of adding your branch to  github. After you have added it (the first time), you can easily push  any new changes that you have committed with the next line.

** End of original page **

----

#### Cleaning to have a light & speedy repository

Q: I wrongly committed some dependances that can be installed by package manager (a.k.a I should not commit that 3rd party packages). Repository is very large in size now. How can I clean it up?

Google: git remove a file from history

* [How to remove a big file wrongly committed to a Git repo - Freek Van der Herten's blog on PHP, Laravel and JavaScript](https://freek.dev/879-how-to-remove-a-big-file-wrongly-committed-to-a-git-repo)

Google: Maintaining a Git Repository

----

#### Merge Branches

Q: How can I merge a branch back to master?

First, `checkout` to master, and then `merge` the feature branch

```bash
$ git checkout master
$ git merge dev-frontend
# That should create a new commit if not "fast forward".
```

That should create a new commit if not "fast forward". If we don't want to create a new commit when merge, we could use "rebase" instead.

```
[Pull 下載更新 - 為你自己學 Git _ 高見龍](https://gitbook.tw/chapters/github/pull-from-github.html)
```



----

#### Working with remote (e.g. Github)

Q: I've created a new branch in local repo. How can I push it to remote repo, such as Github?

* [git ready » push and delete remote branches](gitready.com/beginner/2009/02/02/push-and-delete-branches.html)

Just push it as usual:

```bash
$ git push <new-branch>
```



Q: I've created a new branch "dev-frontend" on dev_machine1, and pushed it to Github. On dev_machine2, how can I pull/fetch that branch?

Google: pull a branch -> Google:  pull a branch from remote -> Google: git pull remote branch

* [Git Pull   Atlassian Git Tutorial](https://www.atlassian.com/git/tutorials/syncing/git-pull)
* [Git Pull   freeCodeCamp Guide](https://guide.freecodecamp.org/git/git-pull/)

`git pull` is a combination of two other commands: `git fetch` followed by `git merge`:

`git pull` = `git fetch` + `git merge` ([Pull 下載更新 - 為你自己學 Git _ 高見龍](https://gitbook.tw/chapters/github/pull-from-github.html))

```bash
# This is the same as git fetch <remote> followed by git merge origin/<current-branch>.
$ git pull <remote>
$ git checkout dev-frontend
```

or just simply clone the repository:

```bash
 $ git clone https://github.com/itcs-dev-team/revenue-engine.git
 $ cd revenue-engine
 $ git checkout dev-frontend
```



Q: How can I know all the branches and their names (without going to Github and have a look)?

Google: git showing all branch in remote

* [branch - How to fetch all Git branches - Stack Overflow](https://stackoverflow.com/questions/10312521/how-to-fetch-all-git-branches)
* [git ready » list remote branches](gitready.com/intermediate/2009/02/13/list-remote-branches.html)

```bash
# Use the remote related commands to figure out what branches are on my remote.
# e.g. git remote show <remote> # display plenty of information about the remote in general
$ git remote show origin

$ git ls-remote # lists all references to branches and tags
```

```bash
$ git branch -a # to see all local and remote branches
```

```bash
$ git branch -r # to see remote branches only
```



Q: I rename a local branch with `git branch -m new_name`.  After pushing, the name of remote branch on Github doesn't change. How can I rename a remote branch?

Google: github rename a branch

* [rename git branch locally and remotely](https://gist.github.com/lttlrck/9628955)
* [【狀況題】怎麼刪除遠端的分支？ - 為你自己學 Git | 高見龍](https://gitbook.tw/chapters/github/delete-remote-branch.html)

We use a `:` in front of branch name to delete that branch when `git push`. (The push command that we use when firstly create a remote branch is `git push origin master:old_branch` , meaning that create a branch `old_branch` after pushing `master` to the remote server. And so push `:old_branch` means pushing empty to the `old_branch`.)

```bash
git branch -m old_branch new_branch         # Rename branch locally    
git push origin :old_branch                 # Delete the remote branch    
git push --set-upstream origin new_branch   # Push the new branch, set local branch to track the new remote
```



Q: Sometimes there is an error when I push to Github: "Updates were rejected because the tip of your current branch is behind its remote counterpart."

```bash
$ git push
To https://github.com/eddiekao/dummy-git.git
 ! [rejected]        master -> master (fetch first)
error: failed to push some refs to 'https://github.com/eddiekao/dummy-git.git'
hint: Updates were rejected because the remote contains work that you do
hint: not have locally. This is usually caused by another repository pushing
hint: to the same ref. You may want to first integrate the remote changes
hint: (e.g., 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
```

Google: Updates were rejected because the tip of your current branch is behind its remote counterpart

* [【狀況題】怎麼有時候推不上去... - 為你自己學 Git _ 高見龍](https://gitbook.tw/chapters/github/fail-to-push.html)

This is because the version on Github is newer than my local repo. To push it, we can `pull` or force `push`.

```bash
$ git pull --rebase
remote: Counting objects: 3, done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 3 (delta 1), reused 3 (delta 1), pack-reused 0
Unpacking objects: 100% (3/3), done.
From https://github.com/eddiekao/dummy-git
   37aaef6..bab4d89  master     -> origin/master
First, rewinding head to replay your work on top of it...
Applying: update index
```

```bash
$ git push -f
Counting objects: 19, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (17/17), done.
Writing objects: 100% (19/19), 2.16 KiB | 738.00 KiB/s, done.
Total 19 (delta 6), reused 0 (delta 0)
remote: Resolving deltas: 100% (6/6), done.
To https://github.com/eddiekao/dummy-git.git
 + 6bf3967...c4ea775 master -> master (forced update)
```

----

#### Which files that others made changes between commits / List file names that changed between commits

Q: After pulling, someone has made changes and I curious which files has been changed (focus on the filename rather than the exact content change).

```bash
* d6c346c 2019-10-15 | [Update] Added PHP and phpmyadmin to install packages (HEAD -> dev-backend-database, origin/dev-backend-database) [ringk-itcs]
* 7f82ce0 2019-10-15 | [ Existing LAMP ] New updated notes for MySQL / Djanjo setup [ringk-itcs]
* 16955df 2019-10-04 | Update .gitignore on 1) Syncthing 2) /Utilities/docker* [Aaron Law]
* 7f25db6 2019-10-04 | Fix: use of PyMySQL and mysql-python connector. [Aaron Law]
* 55ed849 2019-10-04 | Change to use MySQL db backend. (origin/unstable, unstable) [Aaron Law]

```

Google: git show diff between commits -> Google: git show filename to diff between commits 

* [git - How to list only the file names that changed between two commits? - Stack Overflow](https://stackoverflow.com/questions/1552340/how-to-list-only-the-file-names-that-changed-between-two-commits) (it is worth to read the page for more information.)


```bash
git diff --name-only <SHA1> <SHA2>
```

to see the differences between the tenth latest commit and the fifth latest (or so).

```bash
git diff --name-only HEAD~10 HEAD~5
```

[for actions acted on files] is like --name-only, except you get a simple prefix telling you what happened to the file (modified, deleted, added...)

```bash
git diff --name-status [SHA1 [SHA2]]
```

[for actions acted on files] is similar, but commits are listed after the commit message, so you can see when a file was changed

```bash
git log --name-status --oneline [SHA1..SHA2]
```

File status flags:
 M modified   -   File has been modified
 C copy-edit -    File has been copied and modified
 R rename-edit -  File has been renamed and modified
 A added       -   File has been added
 D deleted -      File has been deleted
 U unmerged -     File has conflicts after a merge   

And, use ``--stat`` or `--numstat` for stats:

```
$ git diff --stat HEAD~5 HEAD
 .../java/org/apache/calcite/rex/RexSimplify.java   | 50 +++++++++++++++++-----
 .../apache/calcite/sql/fun/SqlTrimFunction.java    |  2 +-
 .../apache/calcite/sql2rel/SqlToRelConverter.java  | 16 +++++++
 .../org/apache/calcite/util/SaffronProperties.java | 19 ++++----
 .../org/apache/calcite/test/RexProgramTest.java    | 24 +++++++++++
 .../apache/calcite/test/SqlToRelConverterTest.java |  8 ++++
 .../apache/calcite/test/SqlToRelConverterTest.xml  | 15 +++++++
 pom.xml                                            |  2 +-
 .../apache/calcite/adapter/spark/SparkRules.java   |  7 +--
 9 files changed, 117 insertions(+), 26 deletions(-)

```

and `--numstat`:

```
$ git diff --numstat HEAD~5 HEAD
40      10      core/src/main/java/org/apache/calcite/rex/RexSimplify.java
1       1       core/src/main/java/org/apache/calcite/sql/fun/SqlTrimFunction.java
16      0       core/src/main/java/org/apache/calcite/sql2rel/SqlToRelConverter.java
8       11      core/src/main/java/org/apache/calcite/util/SaffronProperties.java
24      0       core/src/test/java/org/apache/calcite/test/RexProgramTest.java
8       0       core/src/test/java/org/apache/calcite/test/SqlToRelConverterTest.java
15      0       core/src/test/resources/org/apache/calcite/test/SqlToRelConverterTest.xml
1       1       pom.xml
4       3       spark/src/main/java/org/apache/calcite/adapter/spark/SparkRules.java

```

and `--shortstat`

```
$ git diff --shortstat HEAD~5 HEAD
9 files changed, 117 insertions(+), 26 deletions(-)
```





----


```

```
