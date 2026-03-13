(: 2.6.Quants empleats hi ha a tota l'empresa?

Utilitza la comanda collection per seleccionar la Base de Dades completa CLASSICMODELS_DB i trobar els empleats.

$nom_variable  in collection("nom_base_de_dades") //element a trobar. :)

count(
  collection("CLASSICMODELS_BD")//employee
)