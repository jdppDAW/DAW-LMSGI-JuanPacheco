(: 2.8.  Mostra el número de xec (number), l'import (amount), i el nom del client (customerName) associats a xecs amb import superior a la mitjana trobada a l'apartat 2.7. Ordena els resultats de més alt a més baix import. Utilitza la comanda collection. :)

let $media := avg(collection("CLASSICMODELS_BD")//amount)

for $x in collection("CLASSICMODELS_BD")//check
  let $amount := xs:decimal($x/amount)
  where $amount > $media
  order by $amount descending
  return concat(
                "Compte: ", data($x/@number), 
                ", Import: ", data($x/amount),
                ", Client: ", data($x/customer/customerName)
              )