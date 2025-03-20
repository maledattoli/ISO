#!/bin/bash
pila=()
push(){
	if [ $# -ne 1 ]; then
		echo "mm me parece que te olvisadte de pasar un parametro"
	else
		pila+=("$1")
		echo "se agrego el elemento $1"
	fi
}
pop(){
	if [ ${#pila[@]} -eq 0 ]; then
		echo "la pila esta vacia no se puede hacer pop"
	else
		elem=${pila[0]}
		unset pila[-1]
		echo "borraste el elemento $elem de la lista"
	fi
}
length(){
	echo "la pila tiene ${#pila[@]} elementos" #cantidad de elementos ${nombre[@]}
}
print(){
	if [ "${#pila[@]}" -eq 0 ]; then
		echo "la pila no tiene elementos"
	else
		for elemento in ${pila[@]}; do
			echo "$elemento"
		done
	fi
}
for i in {1..4}; do
	echo " decime algo"
	read elemento
	push "$elemento"
done
for i in {1..2}; do
	pop
done
length
print

echo "termino lo que se daba"
exit 0

