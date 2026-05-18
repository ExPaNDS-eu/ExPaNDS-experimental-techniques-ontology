# Guidlines for Creating and Reviewing the PaNET Webpages

The PaNET webpages are supposed to give an overview of the scope and application of PaNET. 
Additionally, it provides guidelines and instructions on how to handle different working aspects of PaNET. 

The following sections include a guideline on how to handle the webpages.

# 1. Reviewing and Updating the Webpage (Building with CI/CD)

## 1.1. Reviewing a Webpage

If somebody changed the webpage and requests a review, you can visibly inspect the changes by downloading
and evaluating the provided artifact.

### 1.1.1. Find and Download the Artifact

- Go to the Pull Request that changes the webpage.
- Find the box with the checks of the code: 'Some checks were not successful' or 'All checks successful'.
- Find panet-build / build-webpage (pull_request).
- Click the three dots on the right and select 'view details'.
- Find the point 'Upload complete website' and expand it.
- Download the artifact by clicking the link in the last line, labeled with 'Artifact download URL'.

### 1.1.2. Evaluate the new Webpage

- Extract the artifact (usually bundled as zip AND tar).
- Check the changed files (check the 'Files changed' section of the Pull Request).

## 1.2. Update the Webpage

**Only recommended for small changes!**

- Find the respective `.html` document in the `docs` folder.
- Select 'Edit this file' in the top right.
- Make changes.
- Push button 'Commit changes...' in the top right.
- Provide detailed commit message, optimally including Motivation, Modification, and Result.


# 1. Creating and Updating the Webpage (Building locally)

## 1.1. Installing jekyll

Instructions taken from https://jekyllrb.com/.

### 1.1.1. Install Ruby and other prerequisites

```
sudo apt-get install ruby-full build-essential zlib1g-dev
```

Avoid installing RubyGems packages (called gems) as the root user. Instead,
set up a gem installation directory for your user account. The following
commands will add environment variables to your ~/.bashrc file to configure
the gem installation path:

```
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

### 1.1.2. Install jekyll and bundler gems

```
gem install jekyll bundler
```

### 1.1.3. Install Plugin Jekyll-data

```
bundle add jekyll-data
```

`jekyll-data` must be added as plugin to `_config.yml`.

```
plugins:
  - jekyll-data
```

## 1.2. Create a new Webpage

Create a Jekyll site at ./myblog and change into the folder

```
jekyll new myblog
cd myblog

```

### 1.2.1. Build the site to make it available on a local server.

```
bundle exec jekyll serve
```

### 1.2.2. Browse the site

```
http://localhost:4000
```

### 1.2.3. Whenever updating config.yaml...

... exit the serve with `ctrl+c` and re-execute it.

## 1.3 Updating the site

The content and design is separated in jekyll. It is easy to 

- create pages with new content and same design,
- update the design for all pages.

### 1.3.1. Updating the Design

The overall structure of a single page is described by the `html` files in the folder `_layouts`. 
The detailed elements of the page components (e.g. header, footer) are collected in the folder `_includes`.

### 1.3.2. Updating Content

The content itself is managed in the `html` files directly in the `docs` folder. Jekyll only considers those html files that beginn with 

```
---
---
```

Jekyll also offers the possibility to auto-generate pages based on yaml files. This is not implemented here.

# 2. Reviewing the webpages

Create preview on created webpage under "real conditions"

> Currently, the link to Browse PaNET is not working within this review process. However, the final link should be. Improvements are in progress.

## 2.1. Download artifact from last successful build-webpage job

- Go to the "Actions" section of the repo.
- Select the last commit in the "All Workflows" section.
- Click on "build-webpage" (if if has a green checkmark, if not, go to another commit).
- Click on "Upload artifact" to expand details.
- Download the artifact by clicking the url in the last line.

## 2.2 Create temprorary folder

- Create a temporary folder in your local git repo and change into it.

```
mkdir vtmp
cd vtmp/
```

## 2.3. Unzip the downloaded artifact

The actual content is packed twice: as tar and zip.

```
unzip ~/Dowloads/github-pages.zip
tar xf artifact.tar
```

## 2.4. Cosmetics

In order to mimic the actual structure of the PaNET webpage documents, the tar itself must be deleted and an intermediate folder must be created.

```
rm artifact.tar
mkdir ExPaNDS-experimental-techniques-ontology
mv * ExPaNDS-experimental-techniques-ontology
```

## 2.5. Create a server and visit the webpage

```
python -m http.server
```

Go to `http://0.0.0.0:8000/`
