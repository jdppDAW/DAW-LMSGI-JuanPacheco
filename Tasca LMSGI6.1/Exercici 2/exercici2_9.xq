(: 2.9. Mostra el nombre d'empleats, clients i xecs que hi ha a la base de dades. Utilitza un salt de línia amb una variable let $nl := "&#10;". :)

let $nl := "&#10;"
let $db := collection("CLASSICMODELS_BD")

return "Número d'empleats: " || count($db//employee) || $nl ||
       "Número de clients: " || count($db/customers/customer) || $nl ||
       "Número de xecs: " || count($db//check)
                 