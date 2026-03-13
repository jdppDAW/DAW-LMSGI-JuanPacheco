(: 2.2. Quants clients tenen un límit de crèdit (creditLimit) superior a 1600? :)

count(
  for $c in doc("Customers.xml")/customers/customer
    let $cl := $c/creditLimit
    where $cl != "NULL"
      and $cl > 1600
    return $c/customerName
)
