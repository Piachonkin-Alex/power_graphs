 enhanced_edges_num:= function(G)
   local a, b, edge_num;
   edge_num:=0;
   for a in Set(G) do
     for b in Set(G) do
       if Order(a)=1 or Order(b)=1 or a=b then continue;
       fi;
       if IsCyclic(Group(a,b)) then edge_num:=edge_num+1;
       fi;
     od;
   od;
   edge_num:=edge_num / 2;
   return edge_num;
end;
