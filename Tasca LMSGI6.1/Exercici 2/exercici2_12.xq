(: 2.12. Retorna el número de xecs (number) creats pels clients amb el cognom "Atelier graphique". Utilitza una consulta niada per obtenir el customerNumber del client associat i filtrar pels seus xecs. :)

(: Si se busca la lista de los 3 checks: 

for $x in doc("Payments.xml")/payments/check
  where $x/customer/@customerNumber= (
    for $c in doc("Customers.xml")/customers/customer
      where $c/customerName = "Atelier graphique"
      return $c/@customerNumber
      )
    return $x/@number    

:)
        
(: Si se busca el recuento total de checks: :)

count(
  for $x in doc("Payments.xml")/payments/check
    where $x/customer/@customerNumber= (
    for $c in doc("Customers.xml")/customers/customer
      where $c/customerName = "Atelier graphique"
      return $c/@customerNumber
    )
    return $x/@number
  )