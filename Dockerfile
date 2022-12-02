FROM registry.opensuse.org/opensuse/tumbleweed

#		texlive-* && \
RUN zypper ref && \
    zypper -n install \
		make \
		inter-fonts \
		texlive-pdftex-bin texlive-etoolbox texlive-collection-publishers \
		texlive-dashrule texlive-multirow texlive-hyperref texlive-paracol \
		texlive-tabularew texlive-xltabular texlive-supertabular texlive-tabulary \
		texlive-xetex texlive-fontspec \
		texlive-amsmath texlive-siunitx \
		texlive-chktex-bin \
		xindy \
		texlive-latex texlive-latexmk-bin \
		texlive-babel-german \
		texlive-koma-script \
		texlive-listing \
		texlive-float \
		texlive-geometry \
		texlive-courier \
		texlive-courier-fonts \
		texlive-caption \
		texlive-glossaries \
		texlive-eqlist \
		&& \
	zypper clean -a

CMD ["pdflatex", "-version"]
