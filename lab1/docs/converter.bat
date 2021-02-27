del report.docx
del report.pdf
del presentation.pdf
del presentation.pptx
pandoc --filter pandoc-crossref -o report.docx report.md
pandoc --filter pandoc-crossref -o report.pdf report.md
pandoc --filter pandoc-crossref -o presentation.pdf presentation.md
pandoc --filter pandoc-crossref -o presentation.pptx presentation.md