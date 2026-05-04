# Instructions for creating the final version of your ELS paper #

Before submitting the final version of your ELS paper, you need to get a DOI
for it. These instructions will guide you through the process.


1. Go to https://zenodo.org/communities/els

2. Click on `New Upload` (should be a big, green button).

3. You should see a form for uploading a new document. The Zenodo community
   named "European Lisp Symposium" should be already selected. Otherwise,
   click `Select Community` and look for it there. Skip the "Files" section
   for now.

4. The "Basic information" section will get you your DOI. Do not fill in the
   "Digital Object Identifier" field, but click on `No, I need one` instead.
   Zenodo will then assign you a DOI. Include this DOI in your paper
   (`\acmDOI{...}` as in the LaTeX template) and recompile it. Then, upload
   your finished paper in the "Files" section (this process resolves the
   circular dependency of the DOI being included in the file it points to).

5. Back to the "Basic information" section. Select `Publication/Conference
   paper` as the "Resource type, and fill in your paper's title, the date
   (which should be 2026-05-11) and the authors. If you plan to publish more
   papers in the future, I also recommend you register an ORCID for yourself
   and put it there. The `Description` field should be the abstract of your
   paper. As for the license, I would recommend `Creative Commons Attribution
   No Derivatives 4.0 International`. You can also set the copyright to
   yourself.

6. Jump to the "Related works" section. Set the `Relation` to "is compiled
   by", the `Identifier` to "2677-3465", the `Scheme` to "ISSN" and the
   `Resource type` to "Publication/Conference proceedings".

7. Jump to the "Conference" section. Set the `Title` to "The 19th European
    Lisp Symposium", the `Acronym` to "ELS'26", the `Place` to "Krakow,
    Poland", the `Dates` to "11-12 May 2026", and the `Website` to
    "https://european-lisp-symposium.org/2026".

8. Double-check that all fields have been filled out correctly, possibly add
   any other information you'd like, and click `Submit for review` at the top
   of the page.
