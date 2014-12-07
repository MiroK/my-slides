u:=4.0cm;

def square(expr A, B, C, D) =
   A -- B -- C -- D --A
enddef;

def arc(expr p, q, centre) =
   p{dir(angle(p-centre) - 90)}..{dir(angle(q-centre)-90)}q
enddef;

beginfig(1)

pair rs[];
rs0=(0u, 0u);
rs1=(0u, 1u);
rs2=(1u, 1u);
rs3=(1u, 0u);
rs4=(1u, -1u);
rs5=(0u, -1u);
rs6=(-2u, -1u);
rs7=(-2u, 1u);
rs8=(-2u, 4u);
rs9=(1u, 4u);
rs10=(6u, 4u);
rs11=(6u, -1u);

% Draw mesh
pickup pencircle scaled 3;
draw square(rs0, rs1, rs2, rs3) withcolor 0.5black dashed evenly;
draw square(rs0, rs3, rs4, rs5) withcolor 0.5black dashed evenly;
draw square(rs1, rs5, rs6, rs7) withcolor 0.5black dashed evenly;
draw square(rs2, rs7, rs8, rs9) withcolor 0.5black dashed evenly;
draw square(rs4, rs9, rs10, rs11) withcolor 0.5black dashed evenly;

draw arc(rs1, rs3, rs0) withcolor blue;
draw arc(rs3, rs5, rs0) withcolor blue;
draw arc(rs5, rs7, rs1) withcolor blue;
draw arc(rs7, rs9, rs2) withcolor blue;
draw arc(rs9, rs11, rs4) withcolor blue;

label(btex $u$ etex scaled 3, 0.5[rs2, rs1] shifted (0, 0.25u));

endfig;

end;


