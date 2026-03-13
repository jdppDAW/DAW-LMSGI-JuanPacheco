(: 2.10. Troba la id (employeeNumber) dels empleats amb cognom Patterson.:)

for $e in collection("CLASSICMODELS_BD")//employee[lastName = "Patterson"]

  return $e/@employeeNumber