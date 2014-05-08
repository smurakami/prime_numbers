seq 1000 | xargs -n1 -I@ echo "seq -f '@/%g' @ | tr '/' '%' | bc | awk '\$1==0{print 1}' | wc -l" | bash | awk '$1==2{print NR}'
