(: 2.1. Quin són els noms dels clients que tenen un límit de crèdit (creditLimit) entre 1160 i 1165 $? descartar explícitament els valors NULL.:)

for $c in doc("Customers.xml")/customers/customer
  let $cl := $c/creditLimit
  where $cl != "NULL"
    and $cl >= 1160 
    and $cl <= 1165 
  return $c/customerName
