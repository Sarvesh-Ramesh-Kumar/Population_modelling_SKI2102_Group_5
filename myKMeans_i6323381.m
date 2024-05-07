function myKMeans_i6323381(data,k,clusterCenter) %function definition with 3 parameters

plotDataCenters(data,clusterCenter,'Initialisation of clusters with datapoints') %plotting of the datapoints with cluster initialisation

%% define a set of cluster centers

%visualize the first cluster centers initialization
plotDataCenters(data,clusterCenter,'Initial cluster centers') %plotting with the initialisation points for the cluster centroids
% extract dataset dimensions N
N=length (data);
dist=zeros(k,N); %creating kxN 0 matrix to iterate the distances for centroids and points
maxiter = 5; % maximum number of iterations for the centroids
%% For loop for iterating the distance between the clusuter centroids and the datapoints
for i=1:maxiter
    % Compute Squared Euclidean distance (i.e. the squared distance)
    % between each cluster centre and each observation
    %% Finding the eucledian distance between cluster centre and datapoints
    for j = 1:k
        dist(j,:) = square_distance_i6323381(data,clusterCenter(j,:));
        [~,clusterAssign]=min(dist,[],1); % Assign data to clusters
        %% Update each cluster centre by calculating the mean of data points
        for j=1:k
            cluster_j= data(clusterAssign==j,:); % Update cluster centre
            clusterCenter(j,:)=mean(cluster_j);
        end 
    end
end
%% Scatter plotting the data columns with the final cluster centres
scatter(data(:,1),data(:,2),'+b')
hold on 
plot(clusterCenter(:,1),clusterCenter(:,2), 'r*')
title ('Cluster Assignment using myKmeans function')
legend('data points','cluster centres')
%% Clustering same dataset with kmeans function of Matlab
[IDX,C] = kmeans(data,k); 
% IDX provides the cluster indices to which each data point is assigned to
% C provides the coordinates of the cluster centres
plotDataCenters(data,C,'Cluster Assignment using Matlab Kmeans')
%% Comparison between the myKmeans and Matlab kmeans
fprintf('Results using Matlab kmeansimplementation:')
disp(C) %display the coordiantes for comparison 
fprintf('Results using myKmeans_i6323381 implementation:')
disp(clusterCenter)

end

function plotDataCenters(data,clusters,atitle)
    figure; hold on;
    plot(data(:,1),data(:,2),'+b');
    if(size(clusters,1)>0)
        hold on
        plot(clusters(:,1),clusters(:,2),'*r');
        hold off;    
    end
    title(atitle)
    legend('data points','cluster centres')
end