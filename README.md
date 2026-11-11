# UNO Thesis LaTeX Template
A reusable LaTeX starter for UNO theses. Confirm requirements with your department, school, and supervisory committee. Citation style is department-dependent; numeric citations are the editable default here.

## PDF Preview

[View the PDF preview](example.pdf)

## A note on citations
Zotero with the [better bibtex plugin](https://github.com/retorquere/zotero-better-bibtex) makes managing references way easier. Export the collection in the **Better BibLaTeX** format to `references.bib`. Update `packages.tex` to reflect your path to this file.

## Start a Thesis
Before you start writing make sure to edit the fields in `metadata.tex`. Also make sure you deleted and replaced the sample entry in `references.bib` with the path to your references made in Zotero with **Better BibLaTeX**. Lastly, if you are using different paths then I have set up, make sure the document(s) are updated to reflect this.

## Figures and Tables
I think it is easier to have separate files for tables and figures. To make this workflow simpler, I have created the commands `\insertfigure` and `\inserttable`. These can be called in any section. 

For example, in your methods you may have a figure in `/Graphics/Tables` and you can call this by using `\inserttable{table-name}`.

Lastly, if you are on macOS, the `latexmkrc` will convert images to png's automatically upon compiling your document. 
