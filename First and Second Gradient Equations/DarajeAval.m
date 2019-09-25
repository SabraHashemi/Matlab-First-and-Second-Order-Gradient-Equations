%inputs
clear all; 
clc;
TRUE = 1;
FALSE = 0; 

OK = FALSE;
 while OK == FALSE 
 fprintf(1,'10 zarib ra vared konid :\n');
 N = 10;
 if N > 0 
 OK = TRUE;
 A = zeros(1,N);
 for I = 1:N
     
fprintf(1,'Input A(%d)', I);
A(1,I) = input(' ');
     
 end
 else 
 fprintf(1,'Number must be a positive integer\n');
 end
 end

TRUE = 1;
FALSE = 0; 

OK = FALSE;
 while OK == FALSE 
 fprintf(1,'P  :\n');
 N = 5;
 if N > 0 
 OK = TRUE;
 P = zeros(1,N);
 for I = 1:N
     
fprintf(1,'Input P(%d)', I);
P(1,I) = input(' ');
     
 end
 else 
 fprintf(1,'Number must be a positive integer\n');
 end
 end
 
 fprintf(1,'vahede vabaste ra vared konid:\n');
C = input(' ');
  
  Result = ones(1,5);
 

 IC = zeros(1,5);
 
 for i=1:5
     
      IC(1,i)=A(1,(i-1)+i)+A(1,i+i)*P(1,i);
 end 
 
 
%  IC1=A(1,1)+A(1,2)*P(1,1);  
%  IC2=A(1,3)+A(1,4)*P(1,2);
%  IC3=A(1,5)+A(1,6)*P(1,3); 
%  IC4=A(1,7)+A(1,8)*P(1,4); 
%  IC5=A(1,9)+A(1,10)*P(1,5); 
 


 for i=1:5
   %  if(i~=C)
   Result(1,i) = IC(1,i)-IC(1,C);
    % end
 end
 

 abs_Result = zeros(1,5);
 for i=1:5   
   abs_Result(1,i) = abs( Result(1,i));
 end
 
% vahede moaser 
[value,index]=max(abs_Result);

vahede_moaser=IC(1,index);

if(IC(1,index)>IC(1,C))
    P(1,index)= P(1,index)-1;
    P(1,C)=P(1,C)+1;
else
    P(1,index)= P(1,index)+1;
    P(1,C)=P(1,C)-1; 
end

k=1;
 while(abs_Result(1,5)>0.01 || abs_Result(1,4)>0.01 || abs_Result(1,3)>0.01 || abs_Result(1,2)>0.01 || abs_Result(1,1)>0.01 )
k=k+1;
 IC = zeros(1,5);
 
 for i=1:5
     
      IC(1,i)=A(1,(i-1)+i)+A(1,i+i)*P(1,i);
 end 
 
 
  for i=1:5
   %  if(i~=C)
   Result(1,i) = IC(1,i)-IC(1,C);
    % end
 end
 

 abs_Result = zeros(1,5);
 for i=1:5   
   abs_Result(1,i) = abs( Result(1,i));
 end
 
% vahede moaser 
[value,index]=max(abs_Result);

vahede_moaser=IC(1,index);

if(IC(1,index)>IC(1,C))
    P(1,index)= P(1,index)-1;
    P(1,C)=P(1,C)+1;
else
    P(1,index)= P(1,index)+1;
    P(1,C)=P(1,C)-1; 
end


 end
  
  fprintf(1,'tedade tekrar :\n');
 k
P
