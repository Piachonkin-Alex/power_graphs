edges_num_power_fla:= function(G)
  local g, result, ord;
  result:=0;
  for g in Set(G) do
    ord:=Order(g);
    if ord=1 then 
      continue;
    fi;
    result:= result + ord - euler(ord) / 2;
  od;
  result:=result - 3 / 2 *(Size(G) - 1);
  return result;
end;
