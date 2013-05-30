# Fiscal sponsorship agreement for NumFOCUS and open source projects

This document is meant to establish a formal relationship between NumFOCUS and
an open source project, where NumFOCUS acts as a "Fiscal Sponsor" for the
project. This means that NumFOCUS will act as a financial point of contact for
the project and will collect all donations, which are therefore tax deductible
under US law.  In return, the project commits to only spending these funds in
compliance with NumFOCUS' mission in support of open source scientific
computing, education and reproducible research (the specific legal terms are
indicated in the document body).

## Fiscal oversight team

An open source project that wishes to operate under the NumFOCUS umbrella will
need to select a small "fiscal oversight team" comprised of 3 or 5 individuals
related to the project.  These individuals will sign this agreement and will
act as the point of contact between NumFOCUS and the broader community and the
active leadership structure of the project.

It is important to clarify the scope of this "fiscal oversight team": it is NOT
a "board of directors" or otherwise leadership/guidance group for the project.
Each project should maintain its own decision-making process, following its
existing community and practices.  The fiscal team is *strictly* the group of
people who will have to approve requests to NumFOCUS for money, and who take
the responsibility of saying "we think this expenditure is OK, given the
NumFOCUS charter and the project's open source status".  Specific details on
the interaction between NumFOCUS and this team, as well as the guidelines on
conflicts of interest that the team must respect, are provided in the full
fiscal sponsorship agreement.


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
