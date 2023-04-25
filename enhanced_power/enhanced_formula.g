edges_num_enhanced_fla:= function(G)
  local g, result, ord;
  result:=0;
  for g in Set(G) do
    ord:=Order(g);
    if ord=1 then 
      continue;
    fi;
    result:= result + co2(ord) / (2*euler(ord));
  od;
  result:=result - 3 / 2 *(Size(G) - 1);
  return result;
end;
