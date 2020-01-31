FROM paperist/alpine-texlive-ja
RUN apk add --no-cache curl
    curl -L https://osdn.net/dl/mytexpert/jlisting.sty.bz2 --output ./jlisting.sty.bz2 && \
    bzip2 -d ./jlisting.sty.bz2 && \
    mv ./jlisting.sty /usr/share/texlive/texmf-dist/tex/latex/listing/
RUN mktexlsr
