#!/bin/zsh

DATE_COVER=$(date "+%d %B %Y")

SOURCE_FORMAT="markdown_strict\
+pipe_tables\
+backtick_code_blocks\
+auto_identifiers\
+strikeout\
+yaml_metadata_block\
+implicit_figures\
+all_symbols_escapable\
+link_attributes\
+smart\
+fenced_divs"

pandoc -s --dpi=300 --slide-level 2 --toc --listings --shift-heading-level=0 --columns=50 --template /Users/laiduy98/Documents/UP/TER/cose-19/presentation/default.tex --pdf-engine lualatex -f "$SOURCE_FORMAT" -M date="$DATE_COVER" -t beamer presentation.md -o pdf/presentation.pdf