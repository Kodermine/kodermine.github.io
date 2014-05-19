---
layout: post

title: Git Basics
subtitle: "Introduction to Version Control using Git."
youtube: www.youtube.com/embed/ZTFaM2ITpjE
excerpt: "Version control(VCS) is a system that records changes to a file or a set of files in a repository. In the programming world a version control system is very useful. Its very convenient to have a tool that keeps track of the changes we've made overtime in the lifecycle of our project, if ever we made a mistake in our code we could easily reset a file back to a version where it was working."
category: "git"

author:
  name: Florida Elago
  twitter: floriidaaa
  gplus: +FloridaElago
  bio: Co-founder
  image: https://lh6.googleusercontent.com/-z__0yucwG38/AAAAAAAAAAI/AAAAAAAAJ_A/qDY5dtCZ4zo/s120-c/photo.jpg
---

# Koding Ruby Git Basics

Hello Everyone, this is the shownotes that comes with the Git Basics hangout that we just did

## What we learned

* Git explained, timelines, commits, staging, timecapsules
* VCS Concept
* Adding configurations
* Generating SSH keys
* Basic Commands
  * `git init`
  * `git status`
  * `git add`
  * `git commit`
  * `git remote`
  * `git push`
  * `git stash`
  * `git diff`
  * `HEAD`
  * `git reset`
  * `git checkout`
  * `git branch`

* Git Tips
  * using wildcards
  * Separate commits
  * branching
  * merge conflicts "OH NO T_T"



## Version Control Systems

Version control(VCS) is a system that records changes to a file or a set of files in a repository. In the programming world a version control system is very useful. Its very convenient to have a tool that keeps track of the changes we've made overtime in the lifecycle of our project, if ever we made a mistake in our code we could easily reset a file back to a version where it was working.

On top of all that a VCS is not just limited for programmers, writers, artists and basically anyone who uses a computer that makes changes to files can use this.

Having a version controll is also great for work that requires collaboration since everyone's changes are tracked and if we are to merge them all together we can do it easily using git.

## Git - a distributed Version Control System

 > Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency. [^1]

Git is actually one of many version control systems out there, and what makes git different from other version control systems is that it's "distributed"

**So what does distributed version control mean?**

Version control systems have different types:

**Local Version Control System**

> Many people’s version-control method of choice is to copy files into another directory (perhaps a time-stamped directory, if they’re clever). This approach is very common because it is so simple, but it is also incredibly error prone. It is easy to forget which directory you’re in and accidentally write to the wrong file or copy over files you don’t mean to.

> To deal with this issue, programmers long ago developed local VCSs that had a simple database that kept all the changes to files under revision control.

> defenition from [git-cm](http://git-scm.com/book/en/Getting-Started-About-Version-Control)

![image](http://git-scm.com/figures/18333fig0101-tn.png)
>Image from git-scm.com

**Centralized Version Control System**

>The next major issue that people encounter is that they need to collaborate with developers on other systems. To deal with this problem, Centralized Version Control Systems (CVCSs) were developed. These systems, such as CVS, Subversion, and Perforce, have a single server that contains all the versioned files, and a number of clients that check out files from that central place. For many years, this has been the standard for version control.
> defenition from [git-cm](http://git-scm.com/book/en/Getting-Started-About-Version-Control)

![image](http://git-scm.com/figures/18333fig0102-tn.png)
>Image from git-scm.com

**Distributed Version Control System**

>This is where Distributed Version Control Systems (DVCSs) step in. In a DVCS (such as Git, Mercurial, Bazaar or Darcs), clients don’t just check out the latest snapshot of the files: they fully mirror the repository. Thus if any server dies, and these systems were collaborating via it, any of the client repositories can be copied back up to
the server to restore it. Every checkout is really a full backup of all the data.

> defenition from [git-cm](http://git-scm.com/book/en/Getting-Started-About-Version-Control)

![image](http://git-scm.com/figures/18333fig0103-tn.png)
>Image from git-scm.com




## Configuring our git

We want git to recognize who we are, so let's configure it to do so by running the following commands in our terminal.

```
git config --global user.name "Your User Name" # this will set the username
git config --global user.email your@email.com # this will set your email address
```

git config --global actually just stores these configuration in a separate file in your home directory. You can view it by typing:

```
cat ~/.gitconfig
```

We can actually do looots of things with git config, but for now, let's just use it to add our email and username.

**CONFIG BONUS**
Let's add pretty colors to our git <3

```
git config --global color.ui true
```

This will make our git interface have color syntax (e.g. red for lines removed and green for lines added)

## Setting up SSH KEYS

In our hangouts I simply demonstrated a tutorial provided by [Github](https://help.github.com/articles/generating-ssh-keys). Please follow that link to learn how to generate SSH keys for your machine and add them to github. Alternatively you can download the client for your machine and this will automatically add ssh keys and add them to github.



## Git timelines

Git creates a timeline for us that will contain time capsules or snapshots of our folder. The green marks below represent the snapshots. We will discuss what they are below

![image](https://www.evernote.com/shard/s217/sh/4165756c-a8e9-4f5a-9c03-2496ac5c0828/575891ce6d6a3415406823969b9b21bb/res/c016613c-5a7f-4810-9bcd-d99db9bef8c4/skitch.jpg)


## Basic Git Commands

### `git init`

`git init` initializes a git repository in whatever folder we're located in. It enables the folder we're in to be version controlled.

Without initializing git, we cannot run any git commands in our folder. Let's try it out.


```
git status #running git command in a folder is not git enabled
output: fatal: Not a git repository (or any of the parent directories): .git

git init # to initialize git
output: Initialized empty Git repository in /Users/shopify/test/.git/
```

### `git status`

`git status` displays if there's any differences between the current files we have and the last commit/snapshot that was in our repository. It also displays if there's anything currently staged in our repository.

### `git add`

`git add` adds files to our *stage*. Git add accepts a filename as an argument, or a wild card. We can do `git add .` to add all the files. We can also pass it the name of the extension + a wild card so that it will add all the files with that extension `git add ‘*.txt’` will add all the files that have `txt` as an extension.


#### What is staged?

So let's imagine an actual stage, and snapshots as actual pictures. When we add new files to our stage they are not necessarily in a snapshot yet, just think that they're getting ready for a photoshoot and they're posing right now. When we take the picture it's the actual snapshot and the files that are in the stage are the only ones included in it.

![image](https://www.evernote.com/shard/s217/sh/a540e82c-f5db-4c0a-a515-00ae8bf11904/9483f62530491fed6fe416757a8039e1/res/10d307fb-7053-42d0-b763-e782bf45eaf0/skitch.jpg)


### `git commit`

`git commit` records the changes or takes the "snapshot" of the files on the stage. `git commit` accepts the option `-m` and a message parameter that will serve as the title of the snapshot.

```
git commit -m "fixed the typo 'asdf' to 'qwerty'"
```

**Tip:** It's a good practice to pass short but detailed messages of what we did for the commit.

### `git remote`

We used `git remote` to connect with our github repo. Git remote allows us to add a remote repositorie from the cloud that will be connected to our current repository.

Usually it is best to keep our original repository in the cloud just in case something happens to our devices.

In the hangout we passed 3 parameters to `git remote [action] [name-of-remote-repository] [url-of-the-repository]`

#### Adding Repositories

`action` - we can pass either `add` or `rm` to add or remove our remote repository.

`name-of-repository` - here we will pass the name we would like to assign to our remote repository. It's common to name our remote cloud repository "origin".


`url-of-the-repository` - We've used github to get the url of our repository.

**Steps to get the remote url**

1. Navigate to http://github.com
2. Go to the repository that you want to use, and get the *SSH clone url*

<img src="http://i.gyazo.com/cc6b82746633400c20769fb2599074e1.gif" height="500px">

**This is what our git command looks like**

`git remote add origin git@github.com:your-user-name/git-basics.git`

#### Removing repositories

Removing remote repositories is *easy*. All we need to do is this: `git remote rm [name-of-repository]`. That's it.

So if I want to remove `origin` I will do `git remote rm origin`.


### Git push

Git push allows us to `push` and copies our last changes into the remote repository that we created. The changes that are going to be copied are only the ones that are commited.


### Git stash.

There may be times that we want git to remember the files we've added to the stage, but we also want to undo it and maybe try something else.

Git let's us `stash` the files on our stage and keeps it, until we are ready to `apply` it again.

Let's try it out.

1. First let's create 2 sample files

  `$ touch sample1.txt sample2.txt`

2. Then let's add them to our stage.

  `$ git add sample1.txt sample2.txt`

3. Let's check our status. We can see that we've added the files and that it's ready to be commited.

```bash
$ git status
> # Changes to be committed:
>#   (use "git reset HEAD <file>..." to unstage)
>#
>#  new file:   sample1.txt
>#  new file:   sample2.txt
>#
```
4. Now let's do a `git stash` and check the `status`. We can see that the files we created are gone.

```bash
$ git stash
> Saved working directory and index state WIP on gh-pages: 8741e43 fix date
> HEAD is now at 111111 fixing things
$ git status
> # On branch origin
> nothing to commit, working directory clean
  ```

6. In this step you guys free to add/change/modify any files.

5. Now let's do a `git stash apply`. Now we can see that the files have been added

```bash
$ git stash apply
># On branch gh-pages
># Changes to be committed:
>#   (use "git reset HEAD <file>..." to unstage)
>#
>#  new file:   sample1.txt
>#  new file:   sample2.txt
>#
```


https://help.github.com/articles/generating-ssh-keys
http://git-scm.com/
http://git-scm.com/book/en/Getting-Started-About-Version-Control
http://en.wikipedia.org/wiki/Revision_control