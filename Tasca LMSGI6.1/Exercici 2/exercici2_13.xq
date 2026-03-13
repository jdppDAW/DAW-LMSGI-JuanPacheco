(: 2.13. Retorna els números de xecs (number) creats pels clients amb customerNumber=103 o customerNumber=112. Utilitza una variable per definir aquests valors  amb la clàusula “let $variable := (valor1,valor2)”,  i compara dins del where “where $variable1/element_fill=$variable2” . :)

let $cn := (103, 112)
  
for $x in doc("Payments.xml")/payments/check
  where $x/customer/@customerNumber = $cn
  return $x/@number
