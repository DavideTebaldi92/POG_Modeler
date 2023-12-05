 %
 %  [Lt,At,Bt,Ct,Dt] = POG_Congruent_Transformation(L,A,B,C,D,T,Tu,Simplify)
 %
 % It applies a Congruent Transformation to a POG state space system:
 %    L*dot_X = A*X + B*U       =>       Lt*dot_Xt = At*Xt + Bt*U
 %          Y = C*X + D*U       =>               Y = Ct*Xt + Dt*U
 % where Lt=T'*L*T, At=T'*A*T, Bt=T'*(A*Tu+B), Ct=C*T and Dt=C*Tu+D.
 %
 % If Simplify=Si (or Yes) the symbolic output matrices are symplified
 %
 function [Lt,At,Bt,Ct,Dt] = POG_Congruent_Transformation(LM,AM,BM,CM,DM,Tx,Tu,Simplify)
 if nargin<7; Tu=0; end
 if sum(size(Tu))==2; Tu=zeros(size(LM,1),size(BM,2)); end
 if nargin<8; Simplify='Si'; end
 if isnumeric(LM)&&isnumeric(AM)&&isnumeric(BM)&&isnumeric(CM)&&isnumeric(DM)&&isnumeric(Tx)&&isnumeric(Tu)
     Lt = Tx.'*LM*Tx;
     At = Tx.'*AM*Tx;
     Bt = Tx.'*(BM+AM*Tu);
     Ct = CM*Tx;
     Dt = DM+CM*Tu;
 else
     Lt = sym(Tx.'*LM*Tx);
     At = sym(Tx.'*AM*Tx);
     Bt = sym(Tx.'*(BM+AM*Tu));
     Ct = sym(CM*Tx);
     Dt = sym(DM+CM*Tu);
     if strcmp(Simplify,'Si')||strcmp(Simplify,'Yes')
         Lt = simplify(Lt);
         At = simplify(At);
         Bt = simplify(Bt);
         Ct = simplify(Ct);
         Dt = simplify(Dt);
     end
 end
 return