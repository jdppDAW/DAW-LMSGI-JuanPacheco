(: 2.15. Retorna el número (number) i l'import (amount) dels xecs associats a clients gestionats pels empleats amb cognoms Fixter o King. Ordena els resultats de major a menor import. :)

let $cognoms := ("Fixter", "King")

for $x in doc("Payments.xml")/payments/check
  where $x/customer/@customerNumber = (
    for $c in doc("Customers.xml")/customers/customer
      where $c/salesRepEmployeeNumber = (
        for $e in doc("Employees.xml")/employees/employee
          where $e/lastName = $cognoms
          return $e/@employeeNumber  
      )
      return $c/@customerNumber 
  )
  order by xs:decimal($x/amount) descending
  return "ID: " || $x/@number || ", Quantitat: " || $x/amount