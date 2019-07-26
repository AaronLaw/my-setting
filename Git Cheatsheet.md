GIT Cheatsheet
====
[15分钟搞定GTD——一个让你把事情做完的系统性指南](http://select.yeeyan.org/view/519841/437987)

## Git notes
* http://grokcode.com/717/how-to-use-source-control-effectively/

### Git guides
* [git - the simple guide - no deep shit!](rogerdudler.github.io/git-guide/)
  * <https://github.com/rogerdudler/git-guide>
  * <http://rogerdudler.github.io/git-guide/index.zh.html>
  * -> [Think Like (a) Git](-> <http://think-like-a-git.net/>)
  * [git 使用简易指南](https://www.bootcss.com/p/git-guide/)
* [Git Tutorials and Training _ Atlassian Git Tutorial](https://www.atlassian.com/git/tutorial/git-basics#!init) (from: http://www.instructables.com/id/GitPi-A-Private-Git-Server-on-Raspberry-Pi/?ALLSTEPS)
* Git - Book <https://git-scm.com/book/en/v2> = <https://book.git-scm.com/book/en/v2>
  * <https://git-scm.com/book/zh-tw/v2>
  * -> <http://gitimmersion.com/>
* <https://progit.org/book/>
  * [Pro Git 中文版（第二版）](https://progit.bootcss.com)


### Setup a private Git server
http://www.instructables.com/id/GitPi-A-Private-Git-Server-on-Raspberry-Pi/?ALLSTEPS


### Reference (general)
----

@2019

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

#### Merge Branches

Q: How can I merge a branch back to master?

----

