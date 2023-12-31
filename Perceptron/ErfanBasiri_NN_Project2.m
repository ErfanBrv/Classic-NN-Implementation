clear
clc

Train_X = zeros(21,9,7);
%train examples related to the A 
Train_X(1,:,:) = [-1 -1 1 1 -1 -1 -1; -1 -1 -1 1 -1 -1 -1; -1 -1 -1 1 -1 -1 -1; -1 -1 1 -1 1 -1 -1; -1 -1 1 -1 1 -1 -1; -1 1 1 1 1 1 -1; -1 1 -1 -1 -1 1 -1; -1 1 -1 -1 -1 1 -1; 1 1 1 -1 1 1 1];
Train_X(2,:,:) = [-1 -1 -1 1 -1 -1 -1;-1 -1 -1 1 -1 -1 -1;-1 -1 -1 1 -1 -1 -1;-1 -1 1 -1 1 -1 -1;-1 -1 1 -1 1 -1 -1;-1 1 -1 -1 -1 1 -1;-1 1 1 1 1 1 -1;-1 1 -1 -1 -1 1 -1;-1 1 -1 -1 -1 1 -1];
Train_X(3,:,:) = [-1 -1 -1 1 -1 -1 -1;-1 -1 -1 1 -1 -1 -1; -1 -1 1 -1 1 -1 -1;-1 -1 1 -1 1 -1 -1;-1 1 -1 -1 -1 1 -1;-1 1 1 1 1 1 -1; 1 -1 -1 -1 -1 -1 1;1 -1 -1 -1 -1 -1 1;1 1 -1 -1 -1 1 1];
%train examples related to the B
Train_X(4,:,:) = [1 1 1 1 1 1 -1; -1 1 -1 -1 -1 -1 1;-1 1 -1 -1 -1 -1 1;-1 1 -1 -1 -1 -1 1;-1 1 1 1 1 1 -1;-1 1 -1 -1 -1 -1 1;-1 1 -1 -1 -1 -1 1;-1 1 -1 -1 -1 -1 1;1 1 1 1 1 1 -1];
Train_X(5,:,:) = [1 1 1 1 1 1 -1; 1 -1 -1 -1 -1 -1 1;1 -1 -1 -1 -1 -1 1;1 -1 -1 -1 -1 -1 1;1 1 1 1 1 1 -1;1 -1 -1 -1 -1 -1 1;1 -1 -1 -1 -1 -1 1;1 -1 -1 -1 -1 -1 1;1 1 1 1 1 1 -1];
Train_X(6,:,:) = [1 1 1 1 1 1 -1;-1 1 -1 -1 -1 -1 1;-1 1 -1 -1 -1 -1 1;-1 1 1 1 1 1 -1;-1 1 -1 -1 -1 -1 1;-1 1 -1 -1 -1 -1 1;-1 1 -1 -1 -1 -1 1;-1 1 -1 -1 -1 -1 1;1 1 1 1 1 1 -1];
%train examples related to the C
Train_X(7,:,:) = [-1 -1 1 1 1 1 1;-1 1 -1 -1 -1 -1 1;1 -1 -1 -1 -1 -1 -1;1 -1 -1 -1 -1 -1 -1;1 -1 -1 -1 -1 -1 -1;1 -1 -1 -1 -1 -1 -1;1 -1 -1 -1 -1 -1 -1;-1 1 -1 -1 -1 -1 1;-1 -1 1 1 1 1 -1];
Train_X(8,:,:) = [-1,-1,1,1,1,-1,-1;-1,1,-1,-1,-1,1,-1;1,-1,-1,-1,-1,-1,1;1,-1,-1,-1,-1,-1,-1;1,-1,-1,-1,-1,-1,-1;1,-1,-1,-1,-1,-1,-1;1,-1,-1,-1,-1,-1,1;-1,1,-1,-1,-1,1,-1;-1,-1,1,1,1,-1,-1];
Train_X(9,:,:) = [-1,-1,1,1,1,-1,1;-1,1,-1,-1,-1,1,1;1,-1,-1,-1,-1,-1,1;1,-1,-1,-1,-1,-1,-1;1,-1,-1,-1,-1,-1,-1;1,-1,-1,-1,-1,-1,-1;1,-1,-1,-1,-1,-1,1;-1,1,-1,-1,-1,1,-1;-1,-1,1,1,1,-1,-1];
%train examples related to the D
Train_X(10,:,:) = [1,1,1,1,1,-1,-1;-1,1,-1,-1,-1,1,-1;-1,1,-1,-1,-1,-1,1;-1,1,-1,-1,-1,-1,1;-1,1,-1,-1,-1,-1,1;-1,1,-1,-1,-1,-1,1;-1,1,-1,-1,-1,-1,1;-1,1,-1,-1,-1,1,-1;1,1,1,1,1,-1,-1];
Train_X(11,:,:) = [1,1,1,1,1,-1,-1;1,-1,-1,-1,-1,1,-1;1,-1,-1,-1,-1,-1,1;1,-1,-1,-1,-1,-1,1;1,-1,-1,-1,-1,-1,1;1,-1,-1,-1,-1,-1,1;1,-1,-1,-1,-1,-1,1;1,-1,-1,-1,-1,1,-1;1,1,1,1,1,-1,-1];
Train_X(12,:,:) = [1,1,1,1,1,-1,-1;-1,1,-1,-1,-1,1,-1;-1,1,-1,-1,-1,-1,1;-1,1,-1,-1,-1,-1,1;-1,1,-1,-1,-1,-1,1;-1,1,-1,-1,-1,-1,1;-1,1,-1,-1,-1,-1,1;-1,1,-1,-1,-1,1,-1;1,1,1,1,1,-1,-1];
%train examples related to the E
Train_X(13,:,:) = [1,1,1,1,1,1,1;1,-1,-1,-1,-1,-1,-1;1,-1,-1,-1,-1,-1,-1;1,-1,-1,-1,-1,-1,-1;1,1,1,1,1,-1,-1;1,-1,-1,-1,-1,-1,-1;1,-1,-1,-1,-1,-1,-1;1,-1,-1,-1,-1,-1,-1;1,1,1,1,1,1,1];
Train_X(14,:,:) = [1,1,1,1,1,1,1;-1,1,-1,-1,-1,-1,1;-1,1,-1,-1,-1,-1,-1;-1,1,-1,1,-1,-1,-1;-1,1,1,1,-1,-1,-1;-1,1,-1,1,-1,-1,-1;-1,1,-1,-1,-1,-1,-1;-1,1,-1,-1,-1,-1,1;1,1,1,1,1,1,1];
Train_X(15,:,:) = [1,1,1,1,1,1,1;-1,1,-1,-1,-1,-1,1;-1,1,-1,-1,1,-1,-1;-1,1,1,1,1,-1,-1;-1,1,-1,-1,1,-1,-1;-1,1,-1,-1,-1,-1,-1;-1,1,-1,-1,-1,-1,-1;-1,1,-1,-1,-1,-1,1;1,1,1,1,1,1,1];
%train examples related to the J
Train_X(16,:,:) = [-1,-1,-1,1,1,1,1;-1,-1,-1,-1,-1,1,-1;-1,-1,-1,-1,-1,1,-1;-1,-1,-1,-1,-1,1,-1;-1,-1,-1,-1,-1,1,-1;-1,-1,-1,-1,-1,1,-1;-1,1,-1,-1,-1,1,-1;-1,1,-1,-1,-1,1,-1;-1,-1,1,1,1,-1,-1];
Train_X(17,:,:) = [-1,-1,-1,-1,-1,1,-1;-1,-1,-1,-1,-1,1,-1;-1,-1,-1,-1,-1,1,-1;-1,-1,-1,-1,-1,1,-1;-1,-1,-1,-1,-1,1,-1;-1,-1,-1,-1,-1,1,-1;-1,1,-1,-1,-1,1,-1;-1,1,-1,-1,-1,1,-1;-1,-1,1,1,1,-1,-1];
Train_X(18,:,:) = [-1,-1,-1,-1,1,1,1;-1,-1,-1,-1,-1,1,-1;-1,-1,-1,-1,-1,1,-1;-1,-1,-1,-1,-1,1,-1;-1,-1,-1,-1,-1,1,-1;-1,-1,-1,-1,-1,1,-1;-1,-1,-1,-1,-1,1,-1;-1,1,-1,-1,-1,1,-1;-1,-1,1,1,1,-1,-1];
%train examples related to the K
Train_X(19,:,:) = [1,1,1,-1,-1,1,1;-1,1,-1,-1,1,-1,-1;-1,1,-1,1,-1,-1,-1;-1,1,1,-1,-1,-1,-1;-1,1,1,-1,-1,-1,-1;-1,1,-1,1,-1,-1,-1;-1,1,-1,-1,1,-1,-1;-1,1,-1,-1,-1,1,-1;1,1,1,-1,-1,1,1];
Train_X(20,:,:) = [1,-1,-1,-1,-1,1,-1;1,-1,-1,-1,1,-1,-1;1,-1,-1,1,-1,-1,-1;1,-1,1,-1,-1,-1,-1;1,1,-1,-1,-1,-1,-1;1,-1,1,-1,-1,-1,-1;1,-1,-1,1,-1,-1,-1;1,-1,-1,-1,1,-1,-1;1,-1,-1,-1,-1,1,-1];
Train_X(21,:,:) = [1,1,1,-1,-1,1,1;-1,1,-1,-1,-1,1,-1;-1,1,-1,-1,1,-1,-1;-1,1,-1,1,-1,-1,-1;-1,1,1,-1,-1,-1,-1;-1,1,-1,1,-1,-1,-1;-1,1,-1,-1,1,-1,-1;-1,1,-1,-1,-1,1,-1;1,1,1,-1,-1,1,1];



% Showing the alphabets
figure;
for i = 1:21     
    subplot(3,7,i),imshow((squeeze(Train_X(i,:,:))),[]),colormap('jet');
end

% Converting training samples to vectores and adding bias term to the last
% element of them

I = zeros(21,64);
I (:,64) = 1;
I(:,1:63) = reshape(Train_X,[21,9*7]);

% An example to check that everything is ok!
%figure,imshow(reshape(I(1,1:63),[9,7]),[]),colormap('jet')

M = 21; % number of training example

% Targets
Train_Y = zeros(21,1) ; Train_Y(1:3,1) = 1 ; Train_Y(4:21,1) = -1 ;



% Training step  
% Later, it could be enhanced by writing in vectorized version.
% Initial weights 
W = zeros(64,1);

learning_rate = 1 ; 
theta = 0 ;

epoch = 0;
y = zeros(21,1);
while sum(y-Train_Y) ~= 0 
    for i = 1:M
        y_in = sum(W(:,1)'.* I(i,:));
        if y_in > theta
            y(i,1) = 1;
        else
            y(i,1) = -1;
        end

        t = Train_Y(i,:);
        if y(i,1) ~= t
            W = W + (learning_rate.*t.*I(i,:))' ;
        else
            W = W; 
        end
        
    end
    epoch = epoch + 1;
end


% Testing phase

X_test = reshape(Train_X(1,:,:),[1,9*7]);
% Applying some noise
X_test(1,1:2) = 1; 
figure,imshow(reshape(X_test(1,1:63),[9,7]),[]),colormap('jet')
X_test(1,64)   = 1; % adding bias term


OTest = X_test'.*W;
if sum(OTest)>0 
    Fpredicted =  1 ;
    disp('this is letter A')
else
    Fpredicted = -1 ;
    disp('this is not letter A')
end





X_test = reshape(Train_X(7,:,:),[1,9*7]);
X_test(1,1:2) = 1; 

figure,imshow(reshape(X_test(1,1:63),[9,7]),[]),colormap('jet')
X_test(1,64)   = 1;


OTest = X_test'.*W;
if sum(OTest)>0 
    Fpredicted =  1 ;
    disp('this is letter A')
else
    Fpredicted = -1 ;
    disp('this is not letter A')
end













