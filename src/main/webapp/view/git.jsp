<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../css/main.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>   
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp" />

<a href="https://www.atlassian.com/git/glossary" target="_blank">Online reference</a>

<div>
git clone --single-branch --branch main https://github.com/rajeshpoddar1504/render-project


<h4>Getting & Creating Projects</h4>
<h5>Command	Description</h5>


git init <em>Initialize a local Git repository</em>
<br>
git clone ssh://git@github.com/[username]/[repository-name].git	<em>Create a local copy of a remote repository</em>
<hr>

<h4>Basic Snapshotting </h4>
    
<h5>Command	Description</h5>


git status	<em>Check status</em>
<br>
git add [file-name.txt]	<em>Add a file to the staging area</em><br>
git add -A	<em>Add all new and changed files to the staging area</em><br>
git commit -m "[commit message]"	<em>Commit changes</em><br>
git rm -r [file-name.txt]	<em>Remove a file (or folder)</em><br>

<hr>
<h4>
Branching & Merging
</h4>
<h5>Command	Description</h5>

git branch <em>	List branches (the asterisk denotes the current branch)</em><br>
git branch -a <em>	List all branches (local and remote)</em><br>
git branch [branch name]	<em>Create a new branch</em><br>
git branch -d [branch name]	<em>Delete a branch</em><br>
git push origin --delete [branch name] <em>	Delete a remote branch</em><br>
git checkout -b [branch name]	<em>Create a new branch and switch to it</em><br>
git checkout -b [branch name] origin/[branch name]	<em>Clone a remote branch and switch to it</em><br>
git branch -m [old branch name] [new branch name]	<em>Rename a local branch</em><br>
git checkout [branch name]	<em>Switch to a branch</em><br>
git checkout -	<em>Switch to the branch last checked out</em><br>
git checkout -- [file-name.txt]	<em>Discard changes to a file</em><br>
git merge [branch name]	<em>Merge a branch into the active branch</em><br>
git merge [source branch] [target branch]	<em>Merge a branch into a target branch</em><br>
git stash	<em>Stash changes in a dirty working directory</em><br>
git stash clear	<em>Remove all stashed entries</em><br>

<hr>
<h4>
Sharing & Updating Projects
</h4>
<h5>
Command	Description
</h5>
git push origin [branch name] <em>	Push a branch to your remote repository</em><br>
git push -u origin [branch name]<em>	Push changes to remote repository (and remember the branch)</em><br>
git push	<em>Push changes to remote repository (remembered branch)</em><br>
git push origin --delete [branch name]	<em>Delete a remote branch</em><br>
git pull	<em>Update local repository to the newest commit</em><br>
git pull origin [branch name]	<em>Pull changes from remote repository</em><br>
git remote add origin ssh://git@github.com/[username]/[repository-name].git<em>	Add a remote repository</em><br>
git remote set-url origin ssh://git@github.com/[username]/[repository-name].git<em>	Set a repository's origin branch to SSH</em><br>

<hr>
<h4>
Inspection & Comparison
</h4>
<h5>
Command	Description
</h5>
git log	<em> View changes</em><br>
git log --summary	<em>View changes (detailed)</em><br>
git log --oneline	<em>View changes (briefly)</em><br>
git diff [source branch] [target branch] <em>	Preview changes before merging</em><br>

<hr>

<h4>Config files</h4>

git config --global user.name "rpoddar" <br>
git config --global user.email rajeshpoddar1504@gmail.com
</div>
</body>
</html>