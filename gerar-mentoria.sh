#!/bin/sh
# Gera mentoria/index.html (link da Mentoria) a partir de index.html: o mesmo arquivo, com <base href="../">
# para achar as imagens. A página percebe sozinha que está em /mentoria/ e mostra o Fluent Labs.
# Rode sempre depois de editar index.html, antes do commit.
cd "$(dirname "$0")" && mkdir -p mentoria && sed 's|<meta charset="utf-8">|<meta charset="utf-8">\
<base href="../">|' index.html > mentoria/index.html && grep -q '<base href="../">' mentoria/index.html && echo "mentoria/index.html gerado"
