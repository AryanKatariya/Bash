echo "Apple Banana Grape" | awk 'END{print"Number of record:"NR;print"Number of field:"NF}'
awk 'END{print"Number of record:"NR;print"Number of field:"NF}' emp.txt
