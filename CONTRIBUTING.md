# Table of Contents

1. [Code of Conduct](#codeOfConduct)
2. [License](#license)
3. [Contributing as a Researcher](#researcherContribution)
    1. [New Term Request](#newTermRequest)
    2. [Technique Enhancements](#techniqueEnhancement)
    3. [Other Contributions](#otherContributions)
4. [Contributing as a Developer](#developerContribution)
    1. [Development Setup](#developmentSetup)
    2. [Submit a Pull Request](#pullRequest)
    3. [Branching & Naming Conventions](#branchesAndNames)
    4. [Commit Message Guidelines](#commits)
    5. [Style & Linting](#styleAndLinting)
    6. [Testing](#testing)
    7. [Documentation](#documentation)
5. [Contributing as a Maintainer](#maintainerContribution)
    1. [Release Process](#release)


# 1. Code of Conduct <a name="codeOfConduct"></a> 

We adopt the [Contributor Covenant Code of Conduct](CODE_OF_CONDUCT.md). 
By participating in this project you agree to abide by its terms. Please read it before interacting 
with the community.


# 2. License <a name="license"></a>

By contributing, you agree that your contributions will be licensed under the same license as the project 
(see [License](LICENSE)). If you need to discuss licensing, please open an issue or contact a maintainer 
directly.


# 3. Contributing as a Researcher <a name="researcherContribution"></a>


## 3.1 New Term Request <a name="newTermRequest"></a>

1. Always search first: Check the existing issues to avoid duplicates.
2. If the topic is already active, please contribute to the discussion there. 
2. If no issue on this topic exists, open a new issue using the provided template.
3. Provide a clear title, e.g. "New Term: `name_of_term`".
4. Add a concise description following the predefined headlines.
5. Participate in the upcoming discussion
5. More details will follow soon.


## 3.2 Technique Enhancements And Concerns <a name="techniqueEnhancement"></a>

1. Always search first: Check the existing issues to avoid duplicates.
2. If the topic is already active, please contribute to the discussion there. 
2. If no issue on this topic exists, open a new blank issue.
3. Provide a clear title.
4. Add a concise description of
    - the current status and what is wrong/inaccurate about it.
    - the kind of information you want to add: updating relationships, adding a description, 
    adding links, ...
    - the acutal information.
    - some kind of justification, e.g. links to journal articles, wikipedia and other sources, ...
5. Participate in the upcoming discussion


## 3.3 Other Contributions <a name="otherContributions"></a>

If you have additional ideas for using or enhancing, which do not fall into the categories 
mentioned above, feel free to contact us! You can
- Submit a blank issue, or
- Reach out directly via [email](panet-maintenance@desy.de).


# 4. Contributing as a Developer <a name="developerContribution"></a>


## 4.1 Development Setup <a name="developmentSetup"></a>

### 4.1.1. Clone the repo (necessary only once)

```
git clone https://github.com/ExPaNDS-eu/ExPaNDS-experimental-techniques-ontology
cd your-repo
```

### 4.1.2. Add remote repository (necessary only once)

```
git remote add upstream git@github.com:ExPaNDS-eu/ExPaNDS-experimental-techniques-ontology.git
```

### 4.1.3. Prepare to use ROBOT (necessary only once)

#### 4.1.3.1 Clone tha panet-build project

See the documentation of [`panet-build`](https://gitlab.desy.de/paul.millar/panet-build).

#### 4.1.3.2 Install ROBOT

The PaNET.owl is generated from an Excel/CSV file using 
[ROBOT](https://central.sonatype.com/artifact/org.obolibrary.robot/robot?smo=true) software. 
Here are some instructions to generate the OWL file:

##### Check whether java is installed

```
java-version
```

##### Clone source code of 1.8.1 version (recommended in README)

```
git clone https://github.com/ontodev/robot.git robot-1.8.1
```

##### Enter the cloned directory

```
cd robot-1.8.1
```

##### Check if maven is installed

```
mvn -help
```

If not yet installed

```
sudo apt update; sudo apt install -y maven
```

##### Build with maven

```
mvn install
```

##### Check installation

```
java -jar bin/robot.jar --help
```

##### Add following lines in .bashrc

```
## add robot to path 
export PATH=$PATH:$CLONE_DIR/robot-1.8.1/bin
```

##### Check if robot works

```
robot --help
```


## 4.2 Submit a Pull Request (PR) <a name="pullRequest"></a>

A Pull Request is supposed to solve an issue that has been discussed with the community. Please create an 
issue first and give the community time to think and discuss before creating a  Pull Requests. 

### 4.2.1. Set up the Development Environment 

See the section [Development Setup](#developmentSetup) for details.

### 4.2.2. Fetch from original repository

```
git fetch upstream
```

### 4.2.3. Merge all changes from fork and you local repo

```
git merge upstream/master
```

### 4.2.4. Create a branch

See the section [Branching & Naming Conventions](branchesAndNames) for details.

Create and go to the dedicated branch (based on master state) for the issue that you want to solve:

```
git checkout -b ISS123-meaningful-name master
```

### 4.2.5. Make your changes; keep them focused on a single purpose.

### 4.2.6. Make sure your changes only affect the intended files and lines

```
git diff
```

### 4.2.7. Test you changes on PaNET.csv with ROBOT and Protégé

See the section [Testing](#testing) for details.

### 4.2.8. Update documentation 

See the section [Documentation](#documentation) for details.

### 4.2.9. Commit and push

Please use the [Commit Message Guidelines](#commits) below and push your branch to your fork.

```
git add <relevant files, space separated>
git commit
git push origin HEAD
```

### 4.2.10. Open a PR against the master branch.

Open the project repo in the browser. A green button is available to create the pull request.

### 4.2.11. Fill in the PR template, linking any related issue (e.g., Fixes #123, Contributes to #420).

> Tip: If you’re unsure whether a change is welcome, open a draft PR or comment on the related issue first.


## 4.3 Branching & Naming Conventions <a name="branchesAndNames"></a>

Ideally, each PR is based on an individual branch, dedicated to a specific issue. The number of this issue 
forms the prefix of the branch name, e.g. `ISS123-`. This prefix is followed by a short description of the 
actual task that is worked on. If an issue is very complex, several branches can be created with the same 
prefix but different suffixes.

All branches should be based on the latest `master`.


## 4.4 Commit Message Guidelines <a name="commits"></a>

We follow the conventional commits specification:

```
<title>

<motivation>

<modification> 

<result> 

<related issues> # optional (e.g., "Closes #123", "BREAKING CHANGE: ...")
```


## 4.5 Style & Linting <a name="styleAndLinting"></a>

Currently no recommendations.


## 4.6 Testing <a name="testing"></a>

### 4.6.1 Changes to the ontology

Check that you only made changes that you intended, e.g. that the linebreak symbol did not change, 
by using `git diff`.

Inspect your changes to `PaNET.csv` using ROBOT, or graphically with [protégé](https://protege.stanford.edu/) 
to make sure that everything is correct. 

#### 4.6.1.1 Use ROBOT

See the documentation of [`panet-build`](https://gitlab.desy.de/paul.millar/panet-build) or the 
[OBO ROBOT](https://robot.obolibrary.org/) general documentation.

When using `panet-build`, create an owl file from your recent changes with 

```
podman run -v ~/git/PaNET/:/work --rm -it panet-build
```

The use of the option `-d` creates a diff to the previous version. 

> Attention! The difference file is sensitive to changes in sequence. If two block change their order, 
this is flagged as a difference, although it does not impact the information content.

#### 4.6.1.2 Use Protégé

Inspect PaNET graphically and evaluate changes. 

1. Install [Protégé](https://protege.stanford.edu/software.php) in Linux.
2. Open your owl file.
3. Run the reasoner: Press `Menu: Reasoner -> Start` reasoner (while `Menu: Reasoner -> HermiT xxxxx` 
is selected).
4. Open OWL Viz with by selecting Tab `OWL Viz`.
5. Select your desired terms. Left box "Class hierarchy", owl:Thing -> photon and neutron technique 
-> ... (click on triangle to see children)
6. Select the information you want to see:
    1. full circle: only selected class
    2. three circles in A shape: class and its direct children
    3. three circles in V shape: class and its direct parents
    4. four circles in square: all classes
    5. empty circle: hide class

### 4.6.2 Changes to other documents

Check that you only made changes that you intended, e.g. that the linebreak symbol did not change, 
by using `git diff`.


## 4.7 Documentation <a name="documentation"></a>

Please check whether your changes require an update to the documentation. If it is the case, please 
update the md files in the repository and documentation webpage accordingly.

1. Keep the Markdown files and the `docs/` folder up‑to‑date.
2. Use Markdown or html for all docs, respectively.

If your PR changes user‑visible behavior, include a short "Usage" snippet in the relevant doc page.


# 5 Contributing as a Maintainer <a name="maintainerContribution"></a>


## 5.1 Release Process <a name="release"></a>

The details of the release process are described in detail in the [documentation](https://expands-eu.github.io/ExPaNDS-experimental-techniques-ontology/release.html).


# Thank you!

Your effort makes this project better for everyone. Happy coding!
