%AUTHOR: BRANDOM VEGA
%github.com/BrandomVega
function grafics(pts,lns,clr,symb, M)
%Grafics is a function that join points (pts) with lines(lns)
%
%
% pts: 2xn matrix to graph
% lns: 2xm Matrix to join the points with lines
% clr: Line color, for example "r" for red lines
% sym: symbol of apex, like "+", "*", "o"

% Get the limits of the axes needed for the graph
rr=axis;

% Select the limits of axes using the minimum and maximum points

M=[min(pts(1,:))-1,max(pts(1,:))+1,min(pts(2,:))-1,max(pts(2,:))+1];
M=[rr;M];
%Selecciona los límites para que quepan las figuras
%Select the limits needed for the figures to fit
M=[min(M(:,1)),max(M(:,2)),min(M(:,3)),max(M(:,4))];
%Graph the points and lines
plot(pts(1,lns(:)),pts(2,lns(:)),clr,pts(1,:),pts(2,:),[clr,symb]);
%We put numbers to the vertices
text(pts(1,:)',pts(2,:)',num2str([1:length(pts)]'));
axis(M);
axis square
grid on
