%AUTHOR: BRANDOM VEGA
%github.com/BrandomVega
function[pts] = mult(A,pts)
%A is the translation matrix
%Pts is the matrix of points in our figure

%We multiply a 3x3 matrix by a 2x1 vector, so it's needed a 3x1 vector
%We add a cero element, do the product and add the pts
n=size(pts);

for i=1: n(2)
    vector = [pts(1,i);pts(2,i);1];
    vector = A*vector;
    new = [vector(1:1), vector(2,1)];
    pts(:,i) = new;
end

end