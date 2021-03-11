pandoc --filter pandoc-crossref -o report.docx report.md
pandoc --filter pandoc-crossref -o report.pdf report.md
pandoc --number-sections -t beamer --slide-level=2 --filter pandoc-crossref -o presentation.pdf presentation.md
