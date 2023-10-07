clear
clc
Train1 = [1 -1 -1 -1 1 -1 1 -1 1 -1 -1 -1 1 -1 -1 -1 1 -1 1 -1 1 -1 -1 -1 1];
figure,imshow(reshape(Train1,[5,5]),[]),colormap('jet')
Train2 = [-1 1 1 1 -1 1 -1 -1 -1 1 1 -1 -1 -1 1 1 -1 -1 -1 1 -1 1 1 1 -1];
figure,imshow(reshape(Train2,[5,5]),[]),colormap('jet')

% Adding bias term to the input vectors

I1 = [1 -1 -1 -1 1 -1 1 -1 1 -1 -1 -1 1 -1 -1 -1 1 -1 1 -1 1 -1 -1 -1 1 1];
I2 = [-1 1 1 1 -1 1 -1 -1 -1 1 1 -1 -1 -1 1 1 -1 -1 -1 1 -1 1 1 1 -1 1];


M = 2 ; % number of training example

% Initial weights 

W = zeros(26,1);

% Targets

O1 = ones(26,1);
O2 = -1*ones(26,1);


% Training step  
% Later, it could be enhanced by writing in vectorized version.

DW1 = I1'.*O1;
DW2 = I2'.*O2;

W = W + DW1 ;
W = W + DW2 ;


% Testing step 

Test1 = [-1 -1 -1 -1 1 -1 1 -1 1 -1 -1 -1 1 -1 -1 -1 1 -1 1 -1 1 -1 -1 -1 -1 1];

OTest = Test1'.*W;



if sum(OTest)>=0 
    Fpredicted =  1 ;
    Output = reshape(Train1,[5,5]) ;
else
    Fpredicted = -1 ;
    Output = reshape(Train2,[5,5]) ;
end

figure,imshow(Output,[]),colormap('jet')


% Based on the lecture, little corruption applied to the input  didn't
% change the result 






