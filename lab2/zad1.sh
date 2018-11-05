rm -f -r lab2

mkdir -p lab2/{a/{b/c,d},e}

echo test1 > lab2/a/b/c/plik1
echo test2 > lab2/a/b/c/plik2
echo testA > lab2/a/d/plikA
echo testB > lab2/a/d/plikB

ln -s ../a/b/c/plik1 lab2/e/link_plik1
ln -s $(realpath lab2/a/b/c/plik1) lab2/e/link_plik1_bez
ln -s $(realpath lab2/a/b/c/plik2) lab2/e/link_plik2_bez
ln -s ../a/d/plikA lab2/e/link_plikA
ln -s $(realpath lab2/a/d/plikB) lab2/e/link_plikB_bez
ln -s ../a lab2/e/link_do_a