all:
	mkdir -p tmp
	haml mycv.xml.haml > tmp/main.xml
	haml src/main.xsl.haml > tmp/main.xsl
	xsltproc tmp/main.xsl tmp/main.xml > cv.html
