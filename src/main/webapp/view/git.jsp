<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<jsp:include page="head.jsp"></jsp:include>
<body>
	<jsp:include page="header.jsp" />

	<a href="https://www.atlassian.com/git/glossary" target="_blank">Online
		reference</a>

	<div>
		git clone --single-branch --branch main
		https://github.com/rajeshpoddar1504/render-project


		<h4>Getting & Creating Projects</h4>
		<h5>Command Description</h5>


		git init <em>Initialize a local Git repository</em> <br> git
		clone ssh://git@github.com/[username]/[repository-name].git <em>Create
			a local copy of a remote repository</em>
		<hr>

		<h4>Basic Snapshotting</h4>

		<h5>Command Description</h5>


		git status <em>Check status</em> <br> git add [file-name.txt] <em>Add
			a file to the staging area</em><br> git add -A <em>Add all new
			and changed files to the staging area</em><br> git commit -m "[commit
		message]" <em>Commit changes</em><br> git rm -r [file-name.txt] <em>Remove
			a file (or folder)</em><br>

		<hr>
		<h4>Branching & Merging</h4>
		<h5>Command Description</h5>

		git branch <em> List branches (the asterisk denotes the current
			branch)</em><br> git branch -a <em> List all branches (local and
			remote)</em><br> git branch [branch name] <em>Create a new
			branch</em><br> git branch -d [branch name] <em>Delete a branch</em><br>
		git push origin --delete [branch name] <em> Delete a remote
			branch</em><br> <br> git checkout [branch name] <em>Switch
			to a branch</em><br> git checkout - <em>Switch to the branch
			last checked out</em><br> git checkout -b [branch name] <em>Create
			a new branch and switch to it</em><br> git checkout -b [branch name]
		origin/[branch name] <em>Clone a remote branch and switch to it
			[create a branch locally if doesn't exist]</em><br> git branch -m
		[old branch name] [new branch name] <em>Rename a local branch</em><br>
		git checkout -- [file-name.txt] <em>Discard changes to a file</em><br>
		<br> git merge [branch name] <em>Merge a branch into the
			active branch</em><br> git merge [source branch] [target branch] <em>Merge
			a branch into a target branch</em><br> git stash <em>Stash
			changes in a dirty working directory</em><br> git stash clear <em>Remove
			all stashed entries</em><br>

		<hr>
		<h4>Sharing & Updating Projects</h4>
		<h5>Command Description</h5>
		git push <em>Push changes to remote repository (remembered
			branch)</em><br> git push origin [branch name] <em> Push a
			branch to your remote repository</em><br> git push -u origin [branch
		name]<em> Push changes to remote repository (and remember the
			branch) [if remote branch doesn't exist it get created]</em><br> git
		push origin --delete [branch name] <em>Delete a remote branch</em><br>
		<br> git pull <em>Update local repository to the newest
			commit</em><br> git pull origin [branch name] <em>Pull changes
			from remote repository</em><br> <br> git remote add origin
		ssh://git@github.com/[username]/[repository-name].git<em> Add a
			remote repository</em><br> git remote set-url origin
		ssh://git@github.com/[username]/[repository-name].git<em> Set a
			repository's origin branch to SSH</em><br>

		<hr>
		<h4>Inspection & Comparison</h4>
		<h5>Command Description</h5>
		git log <em> View changes</em><br> git log --summary <em>View
			changes (detailed)</em><br> git log --oneline <em>View changes
			(briefly)</em><br> git diff [source branch] [target branch] <em>
			Preview changes before merging</em><br>

		<hr>

		<h4>Config files</h4>

		git config --global user.name "rpoddar" <br> git config --global
		user.email rajeshpoddar1504@gmail.com<br> <br>
		<hr>

		<h5>Git Pull Request</h5>
		<div>
			A <b>pull request</b>- also referred to as a merge request –
					is an event that takes place in software development when a
					contributor/developer is ready to begin the process of merging new
					code changes with the main project repository.
		</div>
		<div>if you want to contribute to a project, the simplest way is to:</div>
		<ol>
			<li>Find a project you want to contribute to</li>
			<li>Fork it</li>
			<li>Clone it to your local system</li>
			<li>Make a new branch</li>
			<li>Make your changes</li>
			<li>Push it back to your repo</li>
			<li>Click the<b>Compare & pull request button</b></li>
			<li>Click<b>Create pull request</b>to open a new pull request</li>
		</ol>
	</div>
	<section>
		Topics to refer
		
	</section>
</body>
</html>