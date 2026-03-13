(: 2.5. Mostra una llista amb la id de les transaccions superior  a la mitjana de totes les transaccions. Ordenales alfabèticament. :)

let $media := avg(doc("Payments.xml")/payments/check/amount)

for $p in doc("Payments.xml")/payments/check
  where $p/amount > $media
  order by $p/@number 
  return $p/@number
  