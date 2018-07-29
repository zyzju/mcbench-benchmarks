% This is material illustrating the methods from the book
% Financial Modelling  - Theory, Implementation and Practice with Matlab
% source
% Wiley Finance Series
% ISBN 978-0-470-74489-5
%
% Date: 02.05.2012
%
% Authors:  Joerg Kienitz
%           Daniel Wetterau
%
% Please send comments, suggestions, bugs, code etc. to
% kienitzwetterau_FinModelling@gmx.de
%
% (C) Joerg Kienitz, Daniel Wetterau
% 
% Since this piece of code is distributed via the mathworks file-exchange
% it is covered by the BSD license 
%
% This code is being provided solely for information and general 
% illustrative purposes. The authors will not be responsible for the 
% consequences of reliance upon using the code or for numbers produced 
% from using the code. 



function zvals = density1d(xvals,density,low,up)
% calculates a 1d density for a 2d prob distribution by
% integrating over the second variable

zvals = zeros(length(xvals),1);
for k = 1:length(xvals)
    f = @(a) density(xvals(k),a);
    zvals(k) = quad(f,low,up);
end
end