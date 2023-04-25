edges_num_enhanced_classes:= function(G)
  local class,value, size,representative, result, ord, conj_classes;
  conj_classes:=ConjugacyClasses(G);
  result:=0;
  for class in conj_classes do
    size:=Size(class);
    representative:=Representative(class);
    ord:=Order(representative);
    if ord=1 then 
      continue;
    fi;
    value:= co2(ord) / (2*euler(ord));
    result:= result + size*value;
  od;
  result:=result - 3 / 2 *(Size(G) - 1);
  return result;
end;
