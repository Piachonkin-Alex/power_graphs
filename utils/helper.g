co2 := function(n)
  local collected, result, elem;
  if n=1 then
    return 1;
  fi;
  result:=n*n;
  collected:=Collected(Factors(n));
  for elem in collected do
    result:=result * (1 - 1 / (elem[1] * elem[1]));
  od;
  return result;
end;

euler := function(n)
  local collected, result, elem;
  if n=1 then
    return 1;
  fi;
  result:=n;
  collected:=Collected(Factors(n));
  for elem in collected do
    result:=result * (1 - 1 /elem[1]);
  od;
  return result;
end;