# Fiscal sponsorship agreement for NumFOCUS and open source projects (outdated)

## Note, this repo has been archived as the details here are outdated. Please contact NumFOCUS if you have further questions.

Please read the background.md document for additional details on the purpose
and ideas behind the contracts contained in this repository. This README file
only explains the mechanics of signing a new one.

## Creating an agreement for a new project

The workflow should be to keep a copy of the template documents for each
project, where they edit their own information (names, signatures, addresses,
etc) in three sub-files but leave the master template alone.  The master
template contains all the language that we maintain common to all projects, and
keeping it in a separate file will make it easier to track which projects
have requested a modified FSA instead of accepting the standard template.

Step-by-step instructions:

* Create project skeleton

```
# Define PROJECT name
PROJECT=...
mkdir $PROJECT
cd template/
cp Makefile definitions.tex signatures.tex ../$PROJECT
cp fsa-numfocus-template.tex ../$PROJECT/fsa-numfocus-$PROJECT.tex
```

* In `$PROJECT` directory, edit Makefile to have proper name of main file (not
  named `template` anymore).

* Add the `$PROJECT` directory to the repo

```
git add ../$PROJECT
git commit -m"Created new FSA for project: $PROJECT"
git push
```

* The project members must then edit the three TeX files: `definitions.tex`,
  `signatures.tex` and `address.tex` with their own information.  Note that for
  privacy reasons, `address.tex` should *not* be committed to git, as it is
  likely to be the personal address of a project contributor.

  If the project agrees to the terms of the agreement, nothing else should be
  modififed. In particular, the main container document should *not* be edited
  (other than renaming it to refer to each project) unless the project
  specifically wishes to amend/modify the terms of the agreement.

* Once ready, they submit a pull request into the official NumFOCUS repo with
  their data.  Once accepted, that version of the document will be printed,
  signed and kept on record as the legally binding contract between NumFOCUS
  and the project.
