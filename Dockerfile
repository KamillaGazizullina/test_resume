FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install --yes --no-install-recommends \
	texlive-fonts-recommended \
	texlive-latex-extra \
	texlive-fonts-esadasdxtra \ 
	dvipng \
	texlive-latex-recommended \ 
	texlive-base \
	texlive-pictures \
	texlive-lang-cyrillic \
	texlive-science \
	cm-super 
	
COPY cv /cv
RUN chmod -R 777 /cv/entr.sh
ENTRYPOINT ["/cv/entr.sh"]
