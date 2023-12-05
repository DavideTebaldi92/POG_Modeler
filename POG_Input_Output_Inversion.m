 %  [Li,Ai,Bi,Ci,Di] = POG_Input_Output_Inversion(Le,Ae,Be,Ce,De)
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 % Applies an input-output inversion to a POG state space system:
 %   Le*dot_X = Ae*X + Be*U       =>       Li*dot_X = Ai*Xt + Bi*Ui
 %          Y = Ce*X + De*U       =>             Yi = Ci*Xt + Di*Ui
 % where Li=Le, Ai=Ae-Be*inv(De)*Ce, Bi=Be*inv(De), Ci=-inv(De)*Ce and Di=inv(De).
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 function [Li,Ai,Bi,Ci,Di] = POG_Input_Output_Inversion(Le,Ae,Be,Ce,De)
 Li = simplify(sym(Le));
 Ai = simplify(sym(Ae-Be*inv(De)*Ce));
 Bi = simplify(sym(Be*inv(De)));
 Ci = simplify(sym(-inv(De)*Ce));
 Di = simplify(sym(inv(De)));
 return 