SOURCE=20220907-CCPYDW.md
TARGET=20220907-CCPYDW.pdf

$(TARGET): $(SOURCE)
	pandoc -H make-code-footnotesize.tex --highlight-style=my.theme --number-sections --pdf-engine=xelatex --variable urlcolor=gray --template eisvogel -f markdown -t latex -o $@ $^

.PHONY:
clean:
	rm -f $(TARGET)
