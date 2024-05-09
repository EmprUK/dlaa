# Example data
data <- iris[, 1:2] # Using the first four columns of the iris dataset for simplicity

# Perform k-means clustering
k <- 3 # Number of clusters
kmeans_result <- kmeans(data, centers = k)

# Get cluster assignments
cluster_assignment <- kmeans_result$cluster

# Get centroids
centroids <- kmeans_result$centers

# Set up plot margins
par(mar = c(5, 5, 2, 2))  # Adjust margins (bottom, left, top, right)

# Plot data points
plot(data[, 1], data[, 2], col = cluster_assignment, pch = 20, 
     main = "K-Means Clustering of Iris Dataset", xlab = "Sepal Length", ylab = "Sepal Width")

# Add centroids to the plot
points(centroids[, 1], centroids[, 2], col = 1:k, pch = 4, cex = 2)

# Add legend
legend("topright", legend = paste("Cluster", 1:k), col = 1:k, pch = 20, title = "Clusters")
