(: 2.11. Troba la id (number) dels xecs creats pel client amb customerNumber="103". :)

for $x in doc("Payments.xml")/payments/check
  where $x/customer/@customerNumber = 103
  return $x/@number