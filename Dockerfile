FROM registry.opensuse.org/opensuse/tumbleweed

#		texlive-* && \
RUN zypper ref && \
    zypper -n install --no-recommends \
		make which \
		inter-fonts \
		texlive-pdftex-bin texlive-etoolbox texlive-collection-publishers \
		texlive-dashrule texlive-multirow texlive-hyperref texlive-paracol \
		texlive-tabularew texlive-xltabular texlive-supertabular texlive-tabulary \
		texlive-xetex texlive-fontspec \
		texlive-amsmath texlive-siunitx \
		texlive-chktex-bin \
		xindy \
		texlive-latex texlive-latexmk-bin texlive-luatex-bin \
		texlive-babel-german \
		texlive-koma-script \
		texlive-listing \
		texlive-float \
		texlive-geometry \
		texlive-courier \
		texlive-courier-fonts \
		texlive-caption \
		texlive-glossaries texlive-glossaries-german \
		texlive-eqlist texlive-minted python310-Pygments \
		texlive-plantuml plantuml \
		&& \
	zypper clean -a

CMD ["pdflatex", "-version"]
