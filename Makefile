20220907-CCPYDW.pdf: 20220907-CCPYDW.md
	pandoc --template eisvogel -f markdown -t latex --pdf-engine xelatex -o 20220907-CCPYDW.pdf 20220907-CCPYDW.md
