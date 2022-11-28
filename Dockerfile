FROM registry.opensuse.org/opensuse/tumbleweed

#		texlive-* && \
RUN zypper ref && \
    zypper -n install \
		inter-fonts \
		texlive-pdftex-bin texlive-etoolbox texlive-collection-publishers \
		texlive-dashrule texlive-multirow texlive-hyperref texlive-paracol \
		texlive-tabularew texlive-xltabular texlive-supertabular texlive-tabulary \
		texlive-xetex texlive-fontspec \
		&& \
	zypper clean -a

VOLUME /oki
WORKDIR /oki
CMD ["pdflatex", "-version"]
