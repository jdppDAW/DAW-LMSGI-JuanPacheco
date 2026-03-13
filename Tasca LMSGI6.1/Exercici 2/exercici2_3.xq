(: 2.3. Quina és la quantitat total (amount) dels pagaments realitzats pels clients associats a un representant de vendes amb salesRepEmployeeNumber=1370? :)

sum(
  for $p in doc("Payments.xml")/payments/check
    where $p/customer/salesRepEmployeeNumber = 1370
    return $p/amount
)