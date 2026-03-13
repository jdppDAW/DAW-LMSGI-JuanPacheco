(: 2.14. Retorna els imports (amount) dels xecs associats a clients amb cognoms King o Schmitt. Ordena els imports de major a menor. :)

let $cn := ("King", "Schmitt")
  
for $x in doc("Payments.xml")/payments/check
  where $x/customer/@customerNumber = (
    for $c in doc("Customers.xml")/customers/customer
      where $c/contact/contactLastName = $cn 
      return $c/@customerNumber
  )
  order by xs:decimal($x/amount) descending
  return $x/amount
