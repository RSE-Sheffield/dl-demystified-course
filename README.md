# Introduction to Deep Learning Course

The contents are hosted by github pages at [https://rses-dl-course.github.io/](https://rses-dl-course.github.io/).

## This course is built using 

* Node & npm - Package management
* vuepress - Website 
* reveal-md - Slides
* google colab - Notebooks (python code)

## CI: Automatic deployment to github pages

The site is now automatically built and deployed to github pages using github actions in `.github/workflows/site-deploy.yml`.

**Do not** change the contents of `gh-pages` branch as it hosts the automatically built site contents. 

## Contents

```
├── build # The site builds to this folder for github pages deployment
├── notebooks # Lab notebooks
│ ├── assets # Notebook-specific assets
│ └── python # Notebooks in python
├── site # Vuepress website content
│ └── .vuepress # Vuepress configs
└── slides # Location of revealjs lesson slides
    ├── assets # Slides specific assets
```

## Installation

* Install [node js](https://nodejs.org/)
* Run `npm install` to install all package dependencies


## Previewing the website 

To run the website run:

```
npm run site
```

Does not work in conjuction with the slides!

## Previewing the slides

Run the slides using:

```
npm run slides
```


## Building the entire site

Website is built to the `build` directory for testing the complete site. Use `http-server build` to test the complete site. 

```
npm run build
http-server build
```
