echo "Generating lowres pages:"
for f in ../originais/*.tiff
do
    echo "Converting $f ..."
    convert $f -resize 1200 $f.lowres.jpg
done

echo "And now generating the lowres PDF..."
convert ../originais/capa*.lowres.jpg ../originais/intro*.lowres.jpg ../originais/pagina*.lowres.jpg ../originais/pranchas*.lowres.jpg Projeto_Logico_da_Unidade_de_Controle_de_um_Minicomputador__EFregni_1972.pdf
rm ../originais/*.lowres.jpg -f

echo "done."
