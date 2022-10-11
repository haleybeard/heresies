# heresies
Repository for the Bucknell Heresies project

## Encoding process:

1. Export TEI file from Transkribus
   1. Put XML and PDF files in folder within issue(no) and author folder - check existing file nomenclature
2. Run transformation scenario (XSLTs\XML2TEI.xsl),
   1. Make sure that the transformation scenario has an appended file name to distinguish it from TK output file
3. Proof against text PDF to make sure that all paragraphs and notes are in the right place
   1. Ignore column and page breaks - follow paragraph structure only
   2. put endnotes at point in text (where note number is placed) rather than at end of document
4. Save as [author_last_name.xml] and move to texts directory within issue. These new files are ready for semantic encoding.