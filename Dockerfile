FROM paperist/alpine-texlive-ja
RUN apk add --no-cache curl && \
    curl -L https://osdn.net/dl/mytexpert/jlisting.sty.bz2 --output ./jlisting.sty.bz2 && \
    bzip2 -d ./jlisting.sty.bz2 && \
    chmod 644 jlisting.sty && \
    mkdir -p /usr/local/texlive/2019/texmf-dist/tex/platex/listing/ && \
    cp ./jlisting.sty /usr/local/texlive/2019/texmf-dist/tex/platex/listing/
RUN mktexlsr
