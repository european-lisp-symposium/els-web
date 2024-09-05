# Instructions for creating the final version of your ELS paper #

Before submitting the final version of your ELS paper, you need to get a DOI
for it. These instructions will guide you through the process.


1. Go to https://zenodo.org/communities/els

2. Click on `New Upload` (should be a big, green button).

3. You should see a form for uploading a new document. Skip the first tab for
   uploading files, and fill in all the metadata.

4. In the `Communities` tab, pick `European Lisp Symposium`

5. In the `Upload type` tab, pick `Publication`, and select the `Conference
   paper` publication type.

6. The `Basic information` tab will get you your DOI. Do not fill in the
   `Digital Object Identifier` field, but click the `Reserve DOI` button below
   it. Zenodo will then assign you a DOI. Include this DOI in your paper and
   recompile it. Then, upload your finished paper in the `Files` tab (this
   process resolves the circular dependency of the DOI being included in the
   file it points to).

7. Fill out the remaining items in the `Basic information` tab. The
   `Publication date` is 2025-05-12, the `Title` should be the title of your
   paper, the `Authors` tab should include each author and affiliation (if you
   plan to publish more papers in the future, I also recommend you register an
   ORCID for yourself and put it there), and the `Description` should be the
   abstract of your paper. The other fields are not so important - if you want
   you can declare your paper`s language as `eng`, and add your paper`s
   keywords to the `Keywords` field.

8. In the `License` tab, select `Open Access`, and pick a license. If you are
   not sure about which license to pick, select `Creative Commons Attribution
   No Derivatives 4.0 International`.

9. In the `Related/alternative identifiers` tab, you should specify that the
   paper is part of the ELS proceedings by adding an entry with value ISSN
   2677-3465 with the property `is compiled/created by this upload`. Leave the
   resource type as `N/A`. There have been some reports of the zenodo form not
   accepting the value ISSN 2677-3465. If you see an error such as 'Not a
   valid persistent identifier. Identifier is required.', there are several
   things various people have suggested trying.

    1. Retype ISSN 2677-3465 by hand, don`t copy paste to avoid funny unicode
       characters.
    2. Remove the hyphen: ISSN 26773465.
    3. Try typing the url in the blank:
      https://portal.issn.org/resource/ISSN/2677-3465#
    4. Use the syntax: 2677-3465 (ISSN).
    5. Use the syntax: 2677-3465, without the letters (ISSN).

10. In the `Conference` tab, set the `Conference title` to `The 18th European
    Lisp Symposium`, the `Acronym` to `ELS`25`, the `Dates` to 12-13 05 2025,
    the `Place` to 'Zurich', and the website to
    https://european-lisp-symposium.org/2025.

11. Double-check that all fields have been filled out correctly and click
    `Publish`.
