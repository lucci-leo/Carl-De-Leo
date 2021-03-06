## Question 3:
## Install Bioconductor
source("https://bioconductor.org/biocLite.R")
biocLite()## Question 1: Done online
## Install DNAshapeR
biocLite("DNAshapeR")
## Install Caret
install.packages("caret")

## Question 4: Included in the Code Below
## Initialization
library(DNAshapeR)
library(caret)
workingPath <- "/Users/Carl/Desktop/BISC481m/gcPBM/"

## Predict DNA shapes Using DNAshapeR (Mad: 1-mer+shape)
fn_fasta <- paste0(workingPath, "Mad.txt.fa")
pred <- getShape(fn_fasta)

## Encode feature vectors
featureType <- c("1-mer", "1-shape")
featureVector <- encodeSeqShape(fn_fasta, pred, featureType)
head(featureVector)

## Build MLR model by using Caret
## Data preparation
fn_exp <- paste0(workingPath, "Mad.txt")
exp_data <- read.table(fn_exp)
df <- data.frame(affinity=exp_data$V2, featureVector)

## Arguments setting for Caret
trainControl <- trainControl(method = "cv", number = 10, savePredictions = TRUE)

## Prediction without L2-regularized
model <- train (affinity~ ., data = df, trControl=trainControl, 
                method = "lm", preProcess=NULL)
summary(model)

## Prediction with L2-regularized
model2 <- train(affinity~., data = df, trControl=trainControl, 
                method = "glmnet", tuneGrid = data.frame(alpha = 0, lambda = c(2^c(-15:15))))
model2
result <- model2$results$Rsquared[1]

## Predict DNA shapes Using DNAshapeR (Mad: 1-mer)
fn_fasta <- paste0(workingPath, "Mad.txt.fa")
pred <- getShape(fn_fasta)

## Encode feature vectors
featureType <- c("1-mer")
featureVector <- encodeSeqShape(fn_fasta, pred, featureType)
head(featureVector)

## Build MLR model by using Caret
## Data preparation
fn_exp <- paste0(workingPath, "Mad.txt")
exp_data <- read.table(fn_exp)
df <- data.frame(affinity=exp_data$V2, featureVector)

## Arguments setting for Caret
trainControl <- trainControl(method = "cv", number = 10, savePredictions = TRUE)

## Prediction without L2-regularized
model <- train (affinity~ ., data = df, trControl=trainControl, 
                method = "lm", preProcess=NULL)
summary(model)

## Prediction with L2-regularized
model2 <- train(affinity~., data = df, trControl=trainControl, 
                method = "glmnet", tuneGrid = data.frame(alpha = 0, lambda = c(2^c(-15:15))))
model2
result <- model2$results$Rsquared[1]

## Predict DNA shapes Using DNAshapeR (Max: 1-mer+shape)
fn_fasta <- paste0(workingPath, "Max.txt.fa")
pred <- getShape(fn_fasta)

## Encode feature vectors
featureType <- c("1-mer", "1-shape")
featureVector <- encodeSeqShape(fn_fasta, pred, featureType)
head(featureVector)

## Build MLR model by using Caret
## Data preparation
fn_exp <- paste0(workingPath, "Max.txt")
exp_data <- read.table(fn_exp)
df <- data.frame(affinity=exp_data$V2, featureVector)

## Arguments setting for Caret
trainControl <- trainControl(method = "cv", number = 10, savePredictions = TRUE)

## Prediction without L2-regularized
model <- train (affinity~ ., data = df, trControl=trainControl, 
                method = "lm", preProcess=NULL)
summary(model)

## Prediction with L2-regularized
model2 <- train(affinity~., data = df, trControl=trainControl, 
                method = "glmnet", tuneGrid = data.frame(alpha = 0, lambda = c(2^c(-15:15))))
model2
result <- model2$results$Rsquared[1]

## Predict DNA shapes Using DNAshapeR (Max: 1-mer)
fn_fasta <- paste0(workingPath, "Max.txt.fa")
pred <- getShape(fn_fasta)

## Encode feature vectors
featureType <- c("1-mer")
featureVector <- encodeSeqShape(fn_fasta, pred, featureType)
head(featureVector)

## Build MLR model by using Caret
## Data preparation
fn_exp <- paste0(workingPath, "Max.txt")
exp_data <- read.table(fn_exp)
df <- data.frame(affinity=exp_data$V2, featureVector)

## Arguments setting for Caret
trainControl <- trainControl(method = "cv", number = 10, savePredictions = TRUE)

## Prediction without L2-regularized
model <- train (affinity~ ., data = df, trControl=trainControl, 
                method = "lm", preProcess=NULL)
summary(model)

## Prediction with L2-regularized
model2 <- train(affinity~., data = df, trControl=trainControl, 
                method = "glmnet", tuneGrid = data.frame(alpha = 0, lambda = c(2^c(-15:15))))
model2
result <- model2$results$Rsquared[1]

## Predict DNA shapes Using DNAshapeR (Myc: 1-mer+shape)
fn_fasta <- paste0(workingPath, "Myc.txt.fa")
pred <- getShape(fn_fasta)

## Encode feature vectors
featureType <- c("1-mer", "1-shape")
featureVector <- encodeSeqShape(fn_fasta, pred, featureType)
head(featureVector)

## Build MLR model by using Caret
## Data preparation
fn_exp <- paste0(workingPath, "Myc.txt")
exp_data <- read.table(fn_exp)
df <- data.frame(affinity=exp_data$V2, featureVector)

## Arguments setting for Caret
trainControl <- trainControl(method = "cv", number = 10, savePredictions = TRUE)

## Prediction without L2-regularized
model <- train (affinity~ ., data = df, trControl=trainControl, 
                method = "lm", preProcess=NULL)
summary(model)

## Prediction with L2-regularized
model2 <- train(affinity~., data = df, trControl=trainControl, 
                method = "glmnet", tuneGrid = data.frame(alpha = 0, lambda = c(2^c(-15:15))))
model2
result <- model2$results$Rsquared[1]

## Predict DNA shapes Using DNAshapeR (Myc: 1-mer)
fn_fasta <- paste0(workingPath, "Myc.txt.fa")
pred <- getShape(fn_fasta)

## Encode feature vectors
featureType <- c("1-mer")
featureVector <- encodeSeqShape(fn_fasta, pred, featureType)
head(featureVector)


## Build MLR model by using Caret
## Data preparation
fn_exp <- paste0(workingPath, "Myc.txt")
exp_data <- read.table(fn_exp)
df <- data.frame(affinity=exp_data$V2, featureVector)

## Arguments setting for Caret
trainControl <- trainControl(method = "cv", number = 10, savePredictions = TRUE)

## Prediction without L2-regularized
model <- train (affinity~ ., data = df, trControl=trainControl, 
                method = "lm", preProcess=NULL)
summary(model)

## Prediction with L2-regularized
model2 <- train(affinity~., data = df, trControl=trainControl, 
                method = "glmnet", tuneGrid = data.frame(alpha = 0, lambda = c(2^c(-15:15))))
model2
result <- model2$results$Rsquared[1]