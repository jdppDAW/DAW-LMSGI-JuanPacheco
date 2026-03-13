(: 2.4. Mostra una llista dels empleats amb el seu nom complet,  Numero d'empleat i la ciutat de l'oficina (city) on treballen. El llistat ha d'estar ordenat pel numero d'empleat :)

for $e in doc("Employees.xml")/employees/employee
  order by $e/@employeeNumber
  return concat(
                "Nom:", data($e/firstName), " ", data($e/lastName), 
                ", Numero d'empleat:", data($e/@employeeNumber),
                ", Oficina assignada:", data($e/office/City)
              )
