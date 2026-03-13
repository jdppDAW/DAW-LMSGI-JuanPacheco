(: 2.7. Troba el valor mitjà (amount) de tots els pagaments, arrodonit a l'enter més proper. Utilitza la comanda collection per treballar amb la Base de Dades completa CLASSICMODELS_BD. :)

round(
  avg(
    collection("CLASSICMODELS_BD")//amount
  )
)