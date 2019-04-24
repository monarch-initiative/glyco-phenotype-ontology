MGPO=../ontology/mgpo-edit.owl

for i in dosdp-patterns/*.yaml; do
    [ -f "$i" ] || break
		pattern_path=$i
		tsv=$i".tsv"
		echo $pattern_path
		echo $tsv
		dosdp-tools query --ontology=$MGPO --reasoner=elk --obo-prefixes=true --template=$pattern_path --outfile=$tsv
done
