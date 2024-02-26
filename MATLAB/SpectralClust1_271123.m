% Spectral clustering of the BCL2 network using the adjacency matrix
% Model considers BH3's to be acting on anti-apoptotic BCL2's
% Undirected, symmetric matrix

%%
close all
clc
clear

%%
% Construct interaction/adjacency matrix

S = [0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;     % DIS
     1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;     % Bid
     1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;     % Bim
     1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;     % Puma
     1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;     % Noxa
     0 1 0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0;     % tBid
     0 0 1 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0;     % aBim
     0 0 0 1 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0;     % aPuma
     0 0 0 0 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;     % aNoxa
     0 0 0 0 0 1 1 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;     % BCL-xLc
     0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;     % BCL2c
     0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0;     % MCL1c
     0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0;     % A1c
     0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0;     % BAXc
     0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 1 1 0 0 1 1 0 0 0 0 0 0;     % BCL-xL
     0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 1 0 0 1 0 0 0 0 0 0 0;     % BCL2
     0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0 0 1 1 0 0 0 0 0 0;     % MCL1
     0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 1 1 0 0 1 1 0 0 0 0 0 0;     % A1
     0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 1 1 0 0 0 0 0 0 0 0;     % tBidm
     0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 1 1 0 0 0 1 1 0 0 0 0 0 0 0 0;     % mBim
     0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 1 1 1 0 0 0 1 1 0 0 0 0 0 0 0 0;     % mPuma
     0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0;     % BAX
     0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 1 0 0 0 0 0 0;     % BAK
     0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 1 0 0 0 1 0 0 0 0 0;     % aBAX
     0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 1 0 0 0 0 1 0 0 0 0 1 0 0 0;     % aBAK
     0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0 0 1 0;     % BAX2
     0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0;     % BAX4
     0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 0;     % BAK2
     0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0;     % BAK4
     0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 1;     % Mito
     0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0];    % MOMP     
 
issymmetric(S)                  % Check adjacency matrix is symmetric

node_names = {'DIS', 'Bid', 'Bim', 'Puma', 'Noxa', 'tBid', 'aBim', 'aPuma',...
              'aNoxa', 'BCL-xLc', 'BCL2c', 'MCL1c', 'A1c', 'BAXc', 'BCL-xL',...
              'BCL2', 'MCL1', 'A1', 'tBidm', 'mBim', 'mPuma', 'BAX', 'BAK',...
              'aBAX', 'aBAK', 'BAX2', 'BAX4', 'BAK2', 'BAK4', 'Mito', 'MOMP'};

figure(1)
G_S = graph(S, node_names);      % Graph adjacency matrix
p = plot(G_S);
p.MarkerSize = 8;
p.LineWidth = 2;
p.NodeFontSize = 16;
set(gcf,'position',[10,10,1400,800])
 
%% Clustering algorithm

k = 3;                  % Number of clusters
rng('default')          % For reproducibility
idx = spectralcluster(S,k,'Distance','precomputed','LaplacianNormalization','symmetric');

%% Extract matrices of each cluster

S1 = S(1:13, 1:13);
S2 = S(14:25, 14:25);
S3 = S(26:end, 26:end);

% Plot subnetworks
G_S1 = graph(S1, node_names(1:13));
G_S2 = graph(S2, node_names(14:25));
G_S3 = graph(S3, node_names(26:end));

figure(2)
p1 = plot(G_S1);
p1.MarkerSize = 8;
p1.LineWidth = 2;
p1.NodeFontSize = 16;
set(gcf,'position',[10,10,1400,800])

figure(3)
p2 = plot(G_S2);
p2.MarkerSize = 8;
p2.LineWidth = 2;
p2.NodeFontSize = 16;
set(gcf,'position',[10,10,1400,800])

figure(4)
p3 = plot(G_S3);
p3.MarkerSize = 8;
p3.LineWidth = 2;
p3.NodeFontSize = 16;
set(gcf,'position',[10,10,1400,800])

%% Check irreducibility conditions
% (I + |A|)^(n-1) > 0

IR_S = (eye(31) + S).^30;
IR_1 = (eye(13) + S1).^12;
IR_2 = (eye(12) + S2).^11;
IR_3 = (eye(6) + S3).^5;

%% Calculate spectrum

% Cluster 1
[v1, lambda1] = eig(S1);
[~, ind_1] = sort(diag(lambda1));
lambda1 = lambda1(ind_1, ind_1);
v1 = v1(:, ind_1);

% Cluster 2
[v2, lambda2] = eig(S2);
[~, ind_2] = sort(diag(lambda2));
lambda2 = lambda2(ind_2, ind_2);
v2 = v2(:, ind_2);

[v3, lambda3] = eig(S3);
[~, ind_3] = sort(diag(lambda3));
lambda3 = lambda3(ind_3, ind_3);
v3 = v3(:, ind_3);
