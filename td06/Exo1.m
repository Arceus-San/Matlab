%% Exercice 1

close all
hold on

scatter(testC1(:,1),testC1(:,2),'o','r')
scatter(testC2(:,1),testC2(:,2),'o','b')
scatter(trainC1(:,1),trainC1(:,2),'x','r')
scatter(trainC2(:,1),trainC2(:,2),'x','b')

train=[trainC1;trainC2];
size(train)

M=KDTreeSearcher(train);
[n,d]=knnsearch(M,testC1,'k',3);
% classe(n)

% sumclassif=fitcsvm(TRAIN,CLASSE,'KernelFunction','rbf')
% labels=predict(sumclassif,testC1)

xlim([-3 3])
ylim([-3 3])

hold off
