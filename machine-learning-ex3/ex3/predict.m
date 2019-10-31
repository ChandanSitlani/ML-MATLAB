function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(m, 1);

% ====================== YOUR CODE HERE ======================
[,n]=size(X);
on=ones(m,1);
T=[on X];
X=T;
a=X*transpose(Theta1);
a=sigmoid(a);
a=[on a];
b=a*transpose(Theta2);
b=sigmoid(b);
for i=1:length(p)
    [m,index]=max(b(i,:));
    p(i)=index;
end








% =========================================================================


end
