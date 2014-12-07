u:=4.0cm;

beginfig(1)

pair rs[];
rs0=(0u, 0u);
rs1=(-1u, 0u);
rs2=(-1u, 1u);
rs3=(1u, 1u);
rs4=(1u, -1u);
rs5=(0u, -1u);

% Draw mesh
pickup pencircle scaled 2;
draw rs0--rs1 withcolor black;  
draw rs5--rs0 withcolor black;  

draw rs1--rs2 withcolor black; 
draw rs2--rs3 withcolor black;
draw rs3--rs4 withcolor black;
draw rs4--rs5 withcolor black;

label(btex $\Omega$ etex scaled 3, 0.5[rs0, rs3]);
%label(btex $\Gamma_D$ etex scaled 3, rs0 shifted (-0.25u, -0.25u));
%label(btex $\Gamma_N$ etex scaled 3, rs3 shifted (0.25u, 0.25u));
endfig;

end;


