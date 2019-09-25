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
 
 
 delatPx=1;
 Matp=ones(4,1);
 k=0;
 while(Matp(1,1) > 0.01 || Matp(2,1) > 0.01 || Matp(3,1) > 0.01 || Matp(4,1) > 0.01 ||  deltaPx>0.01)
 k=k+1;
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
 
Mat1=zeros(4,4);
MatIC=zeros(4,1);
if(C==1)
  
        MatIC=[IC(1,C)-IC(1,2);IC(1,C)-IC(1,3);IC(1,C)-IC(1,4);IC(1,C)-IC(1,5)];
    
 for i=1:4  
   for j=1:4   
    if(i~=j)
       Mat1(i,j)=A(1,2); 
    end
    if(i==j)
        if(i==1)
        Mat1(i,j)=A(1,4)+A(1,2);
        end
          if(i==2)
        Mat1(i,j)=A(1,6)+A(1,2);
          end
        if(i==3)
        Mat1(i,j)=A(1,8)+A(1,2);
        end
        if(i==4)
        Mat1(i,j)=A(1,10)+A(1,2);
        end
    end
   end
 end

end
if(C==2)
     MatIC=[IC(1,C)-IC(1,1);IC(1,C)-IC(1,3);IC(1,C)-IC(1,4);IC(1,C)-IC(1,5)];
    
 for i=1:4  
   for j=1:4   
    if(i~=j)
       Mat1(i,j)=A(1,4); 
    end
     if(i==j)
        if(i==1)
        Mat1(i,j)=A(1,2)+A(1,4);
        end
          if(i==2)
        Mat1(i,j)=A(1,6)+A(1,4);
          end
        if(i==3)
        Mat1(i,j)=A(1,8)+A(1,4);
        end
        if(i==4)
        Mat1(i,j)=A(1,10)+A(1,4);
        end
    end
   end
 end    
end
if(C==3)
    
     MatIC=[IC(1,C)-IC(1,1);IC(1,C)-IC(1,2);IC(1,C)-IC(1,4);IC(1,C)-IC(1,5)];
    
 for i=1:4  
   for j=1:4   
    if(i~=j)
       Mat1(i,j)=A(1,6); 
    end
    if(i==j)
        if(i==1)
        Mat1(i,j)=A(1,2)+A(1,6);
        end
          if(i==2)
        Mat1(i,j)=A(1,4)+A(1,6);
          end
        if(i==3)
        Mat1(i,j)=A(1,8)+A(1,6);
        end
        if(i==4)
        Mat1(i,j)=A(1,10)+A(1,6);
        end
    end
   end
 end
end
if(C==4)
    
     MatIC=[IC(1,C)-IC(1,1);IC(1,C)-IC(1,2);IC(1,C)-IC(1,3);IC(1,C)-IC(1,5)];
     
 for i=1:4  
   for j=1:4   
    if(i~=j)
       Mat1(i,j)=A(1,8); 
    end
     if(i==j)
        if(i==1)
        Mat1(i,j)=A(1,2)+A(1,8);
        end
          if(i==2)
        Mat1(i,j)=A(1,4)+A(1,8);
          end
        if(i==3)
        Mat1(i,j)=A(1,6)+A(1,8);
        end
        if(i==4)
        Mat1(i,j)=A(1,10)+A(1,8);
        end
    end
   end
 end
end
if(C==5)
    
     MatIC=[IC(1,C)-IC(1,1);IC(1,C)-IC(1,2);IC(1,C)-IC(1,3);IC(1,C)-IC(1,4)];
    
 for i=1:4  
   for j=1:4   
    if(i~=j)
       Mat1(i,j)=A(1,10); 
    end
    if(i==j)
        if(i==1)
        Mat1(i,j)=A(1,2)+A(1,10);
        end
          if(i==2)
        Mat1(i,j)=A(1,4)+A(1,10);
          end
        if(i==3)
        Mat1(i,j)=A(1,6)+A(1,10);
        end
        if(i==4)
        Mat1(i,j)=A(1,8)+A(1,10);
        end
    end
   end
 end
end

%Mat1*Matp=MatIC;

%Matp=zeros(4,1);
Matp=linsolve(Mat1,MatIC);
deltaPx=-1*(Matp(1,1)+Matp(2,1)+Matp(3,1)+Matp(4,1));


if(C==1)
    P(1,1)=deltaPx+P(1,1);
    P(1,2)=Matp(1,1)+P(1,2);
    P(1,3)=Matp(2,1)+P(1,3);
    P(1,4)=Matp(3,1)+P(1,4);
    P(1,5)=Matp(4,1)+P(1,5);
    
end
if(C==2)

    P(1,2)=deltaPx+P(1,2);
    P(1,1)=Matp(1,1)+P(1,1);
    P(1,3)=Matp(2,1)+P(1,3);
    P(1,4)=Matp(3,1)+P(1,4);
    P(1,5)=Matp(4,1)+P(1,5);
    
end
if(C==3)

    P(1,3)=deltaPx+P(1,3);
    P(1,1)=Matp(1,1)+P(1,1);
    P(1,2)=Matp(2,1)+P(1,2);
    P(1,4)=Matp(3,1)+P(1,4);
    P(1,5)=Matp(4,1)+P(1,5);
    
end
if(C==4)
    
    P(1,4)=deltaPx+P(1,4);
    P(1,1)=Matp(1,1)+P(1,1);
    P(1,2)=Matp(2,1)+P(1,2);
    P(1,3)=Matp(3,1)+P(1,3);
    P(1,5)=Matp(4,1)+P(1,5);
    
end
if(C==5)

    P(1,5)=deltaPx+P(1,5);
    P(1,1)=Matp(1,1)+P(1,1);
    P(1,2)=Matp(2,1)+P(1,2);
    P(1,3)=Matp(3,1)+P(1,3);
    P(1,4)=Matp(4,1)+P(1,4);
    
end

 end

 
   fprintf(1,'tedade tekrar :\n');
 k
P