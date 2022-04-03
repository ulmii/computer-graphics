# Co si? dzieje, gdy w wyniku dodawania warto?ci typu uint8 
# otrzymamy wynik wykraczaj?cy poza przedzia? dopuszczalnych warto?ci tego typu? To nie jest arytmetyka ze szko?y podstawowej, nie jest te? arytmetyka modulo, wi?c co?

x = uint8(32);
y = uint8(254);


# Przypisuje maksymalna wartosc uint8. It underflows, but does not wrap, so it is an absorbing barrier. 
x + y
