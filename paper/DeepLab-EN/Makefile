fnname1=top
#fnname2=sup

all: camera-ready #sup check cheap

tags:
	etags *.tex *.bib

cheap: *.tex *.bib
	bibtex ${fnname1}; pdflatex ${fnname1};

camera-ready: *.tex *.bib
	pdflatex ${fnname1}; bibtex ${fnname1}; pdflatex ${fnname1}; pdflatex ${fnname1}; pdflatex ${fnname1};

#sup: sup.tex
#	pdflatex ${fnname2}; bibtex ${fnname2}; pdflatex ${fnname2}; pdflatex ${fnname2}; pdflatex ${fnname2};

check: camera-ready
	pdffonts ${fnname1}.pdf
	pdffonts ${fnname2}.pdf

clean:
	rm -f ${fnname1}.{out,aux,brf,blg,log,rip,toc,ps,tex.flc,dvi} missfont.log *~
	rm -f ${fnname2}.{out,aux,brf,blg,log,rip,toc,ps,tex.flc,dvi} missfont.log *~
